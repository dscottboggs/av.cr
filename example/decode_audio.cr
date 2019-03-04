require "../src/av"
require "../src/bindings/libavutil/opt"
require "../src/bindings/libavutil/frame"
require "../src/bindings/libavutil/channel_layout"

struct Resampler
  @internal : Pointer(AV::LibSWResample::SwrContext)
  property codec : Pointer(AV::LibSWResample::CodecContext)
  delegate :to_unsafe, to: @internal
  def initialize(for @codec)
    @internal = AV::LibSWResample.alloc
    set_options
    AV::LibSWResample.init self
    raise "Resampler did not initialize correctly" unless AV::LibSWResample.is_initialized resampler
  end
  def set_options
    AV::LibAVUtil.opt_set_int @internal, "in_channel_count", @codec.value.channels, 0
    AV::LibAVUtil.opt_set_int @internal, "out_channel_count", 1, 0
    AV::LibAVUtil.opt_set_int @internal, "in_channel_layout", @codec.value.channel_layout
    AV::LibAVUtil.opt_set_int @internal, "out_channel_layout", AV::LibAVUtil::ChannelLayout::MONO
    AV::LibAVUtil.opt_set_int @internal, "in_sample_rate", @codec.value.sample_rate, 0
    AV::LibAVUtil.opt_set_int @internal, "out_sample_rate", sample_rate, 0
    AV::LibAVUtil.opt_set_sample_fmt resampler, "in_sample_fmt", @codec.value.sample_fmt, 0
    AV::LibAVUtil.opt_set_sample_fmt resampler, "out_sample_fmt", AV::LibAVUtil::SampleFormat::DBL, 0
    self
  end
end

# based on https://rodic.fr/blog/libavcodec-tutorial-decode-audio-file/
def decode_audio_file(path : String, sample_rate : Int32)
  # initialize all muxers, demuxers and protocols for libavformat
  # (does nothing if called twice during the course of one program execution)
  AV.register_all

  # get format from audio file
  fmt : Pointer(AV::LibAVFormat::FormatContext) = AV::LibAVFormat.alloc_context
  if AV::LibAVFormat.open_input(fmt.value, path, nil, nil) != 0
    abort "Could not open file at #{path}"
  end
  if AV::LibAVFormat.find_stream_info(fmt, nil) != 0
    abort "Could not retrieve stream info from file at #{path.inspect}"
  end

  # Find the index of the first audio stream
  stream_index = fmt.value.nb_streams.find do |stream|
    stream.value.codec.value.codec_type == AV::LibAVUtil::MediaType::AUDIO
  end || -1

  abort "No audio stream found in file at #{path.inspect}" if stream_index == -1

  stream = fmt.value.streams[stream_index]

  # find and open codec
  codec = stream.value.codec
  if AV::LibAVCodec.open2(codec, AV::LibAVCodec.find_decoder(codec.value.codec_id), nil) < 0
    abort "Failed to open decoder for stream #{stream_index.inspect} in file at #{path.inspect}"
  end

  resampler = Resampler.new for: codec

  AV::LibAVCodec.init_packet out packet
  frame = AV::LibAVUtil.frame_alloc
  raise "error allocating the frame" if frame.null?
  data = Pointer(Float64).new
  size = 0
  while AV::LibAVFormat.read_frame(fmt, pointerof(packet)) >= 0
    got_frame = uninitialized Int32
    break if AV::LibAVCodec.decode_audio4 codec,
                                          frame,
                                          pointerof(got_frame),
                                          pointerof(packet) < 0
    next if got_frame == 0
    buffer = Pointer(Float64).new
    AV::LibAVFormat.samples_alloc buffer.unsafe_as(Pointer(Pointer(UInt8))),
                                  nil,
                                  1,
                                  frame.value.nb_samples,
                                  AV::LibAVUtil::SampleFormat::DBL,
                                  0
    frame_count = AV::LibSWResample.convert resampler,
                                            buffer.unsafe_as(Pointer(Pointer(UInt8))),
                                            frame.value.nb_samples,
                                            frame.value.data.unsafe_as(Pointer(Pointer(UInt8))),
                                            frame.value.nb_samples
    # Append resampled frames to data
    data = data.realloc(size + frame.nb_samples * sizeof(Float64))
    buffer.copy_to data + size, frame_count * sizeof(Float64)
    size += frame_count
  end
  AV::LibAVUtil.frame_free frame
  AV::LibSWResample.free resampler
  AV::LibAVCodec.close codec
  AV::LibAVFormat.free_context fmt

  Array(Float64).new size do |i|
    (data + i).value
  end
end
