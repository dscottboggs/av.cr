require "./libavutil/avutil"
require "./libavutil/log"
require "./libavcodec"
require "./libavio"
module AV
  @[Link("avformat")]
  lib LibAVFormat
    type FILE = Void
    AVPROBE_SCORE_RETRY                  = AVPROBE_SCORE_MAX/4
    AVPROBE_SCORE_STREAM_RETRY           = AVPROBE_SCORE_MAX/4 - 1
    AVPROBE_SCORE_EXTENSION              =        50
    AVPROBE_SCORE_MIME                   =        75
    AVPROBE_SCORE_MAX                    =       100
    AVPROBE_PADDING_SIZE                 =        32
    @[Flags]
    enum Fmt
      NOFILE                         =    0x0001
      NEEDNUMBER                     =    0x0002
      SHOW_IDS                       =    0x0008
      RAWPICTURE                     =    0x0020
      GLOBALHEADER                   =    0x0040
      NOTIMESTAMPS                   =    0x0080
      GENERIC_INDEX                  =    0x0100
      TS_DISCONT                     =    0x0200
      VARIABLE_FPS                   =    0x0400
      NODIMENSIONS                   =    0x0800
      NOSTREAMS                      =    0x1000
      NOBINSEARCH                    =    0x2000
      NOGENSEARCH                    =    0x4000
      NO_BYTE_SEEK                   =    0x8000
      ALLOW_FLUSH                    =   0x10000
      TS_NONSTRICT                   =   0x20000
      TS_NEGATIVE                    =   0x40000
      SEEK_TO_PTS                    = 0x4000000
    end
    AVINDEX_KEYFRAME                     =    0x0001
    AVINDEX_DISCARD_FRAME                =    0x0002
    @[Flags]
    enum Disposition
      DEFAULT          =    0x0001
      DUB              =    0x0002
      ORIGINAL         =    0x0004
      COMMENT          =    0x0008
      LYRICS           =    0x0010
      KARAOKE          =    0x0020
      FORCED           =    0x0040
      HEARING_IMPAIRED =    0x0080
      VISUAL_IMPAIRED  =    0x0100
      CLEAN_EFFECTS    =    0x0200
      ATTACHED_PIC     =    0x0400
      TIMED_THUMBNAILS =    0x0800
      CAPTIONS         =   0x10000
      DESCRIPTIONS     =   0x20000
      METADATA         =   0x40000
    end
    AV_PTS_WRAP_IGNORE                   =       0o0
    AV_PTS_WRAP_ADD_OFFSET               =         1
    AV_PTS_WRAP_SUB_OFFSET               =        -1
    AVSTREAM_EVENT_FLAG_METADATA_UPDATED =    0x0001
    MAX_STD_TIMEBASES                    = 30*12 + 30 + 3 + 6
    MAX_REORDER_DELAY                    =       16
    AV_PROGRAM_RUNNING                   =        1
    AVFMTCTX_NOHEADER                    =   0x0001
    @[Flags]
    enum FmtFlag
      GENPTS                    =   0x0001
      IGNIDX                    =   0x0002
      NONBLOCK                  =   0x0004
      IGNDTS                    =   0x0008
      NOFILLIN                  =   0x0010
      NOPARSE                   =   0x0020
      NOBUFFER                  =   0x0040
      CUSTOM_IO                 =   0x0080
      DISCARD_CORRUPT           =   0x0100
      FLUSH_PACKETS             =   0x0200
      BITEXACT                  =   0x0400
      MP4A_LATM                 =   0x8000
      SORT_DTS                  =  0x10000
      PRIV_OPT                  =  0x20000
      KEEP_SIDE_DATA            =  0x40000
      FAST_SEEK                 =  0x80000
      SHORTEST                  = 0x100000
      AUTO_BSF                  = 0x200000
    end
    FF_FDEBUG_TS                         =   0x0001
    AVFMT_EVENT_FLAG_METADATA_UPDATED    =   0x0001
    AVFMT_AVOID_NEG_TS_AUTO              =       -1
    AVFMT_AVOID_NEG_TS_MAKE_NON_NEGATIVE =        1
    AVFMT_AVOID_NEG_TS_MAKE_ZERO         =        2
    enum SeekFlag
      BACKWARD                 =        1
      BYTE                     =        2
      ANY                      =        4
      FRAME                    =        8
    end
    AVSTREAM_INIT_IN_WRITE_HEADER        =      0o0
    AVSTREAM_INIT_IN_INIT_OUTPUT         =        1
    AV_FRAME_FILENAME_FLAGS_MULTIPLE     =        1
    # type FormatContext = Void
    type DeviceInfoList = Void
    type DeviceCapabilitiesQuery = Void

    fun get_packet = avformat_get_packet(LibAVIO::IOContext*, LibAVCodec::Packet*, LibC::Int) : LibC::Int
    fun append_packet = avformat_append_packet(LibAVIO::IOContext*, LibAVCodec::Packet*, LibC::Int) : LibC::Int

    struct Frac
      val : Int64
      num : Int64
      den : Int64
    end

    type CodecTag = Void

    struct ProbeData
      filename : LibC::Char*
      buf : LibC::Char*
      buf_size : LibC::Int
      mime_type : LibC::Char*
    end

    struct OutputFormat
      name : LibC::Char*
      long_name : LibC::Char*
      mime_type : LibC::Char*
      extensions : LibC::Char*
      audio_codec : LibAVCodec::CodecID
      video_codec : LibAVCodec::CodecID
      subtitle_codec : LibAVCodec::CodecID
      flags : LibC::Int
      codec_tag : CodecTag**
      priv_class : LibAVUtil::Class*
      next : OutputFormat*
      priv_data_size : LibC::Int
      write_header : (FormatContext*) -> LibC::Int*
      write_packet : (FormatContext*, LibAVCodec::Packet*) -> LibC::Int*
      write_trailer : (FormatContext*) -> LibC::Int*
      interleave_packet : (FormatContext*, LibAVCodec::Packet*, LibAVCodec::Packet*, LibC::Int) -> LibC::Int*
      query_codec : (LibAVCodec::CodecID, LibC::Int) -> LibC::Int*
      get_output_timestamp : (FormatContext*, LibC::Int, LibC::Long*, LibC::Long*) -> Void*
      control_message : (FormatContext*, LibC::Int, Void*, LibC::ULong) -> LibC::Int*
      write_uncoded_frame : (FormatContext*, LibC::Int, LibAVUtil::Frame**, LibC::UInt) -> LibC::Int*
      get_device_list : (FormatContext*, DeviceInfoList*) -> LibC::Int*
      create_device_capabilities : (FormatContext*, DeviceCapabilitiesQuery*) -> LibC::Int*
      free_device_capabilities : (FormatContext*, DeviceCapabilitiesQuery*) -> LibC::Int*
      data_codec : LibAVCodec::CodecID
      init : (FormatContext*) -> LibC::Int*
      deinit : (FormatContext*) -> Void*
      check_bitstream : (FormatContext*, LibAVCodec::Packet*) -> LibC::Int*
    end

    struct InputFormat
      name : LibC::Char*
      long_name : LibC::Char*
      flags : LibC::Int
      extensions : LibC::Char*
      codec_tag : CodecTag**
      priv_class : LibAVUtil::Class*
      mime_type : LibC::Char*
      next : InputFormat*
      raw_codec_id : LibC::Int
      priv_data_size : LibC::Int
      read_probe : (ProbeData*) -> LibC::Int*
      read_header : (FormatContext*) -> LibC::Int*
      read_packet : (FormatContext*, LibAVCodec::Packet*) -> LibC::Int*
      read_close : (FormatContext*) -> LibC::Int*
      read_seek : (FormatContext*, LibC::Int, LibC::Long, LibC::Int) -> LibC::Int*
      read_timestamp : (FormatContext*, LibC::Int, LibC::Long*, LibC::Long) -> LibC::Long*
      read_play : (FormatContext*) -> LibC::Int*
      read_pause : (FormatContext*) -> LibC::Int*
      read_seek2 : (FormatContext*, LibC::Int, LibC::Long, LibC::Long, LibC::Long, LibC::Int) -> LibC::Int*
      get_device_list : (FormatContext*, DeviceInfoList*) -> LibC::Int*
      create_device_capabilities : (FormatContext*, DeviceCapabilitiesQuery*) -> LibC::Int*
      free_device_capabilities : (FormatContext*, DeviceCapabilitiesQuery*) -> LibC::Int*
    end

    enum StreamParseType : LibC::UInt
      NONE       =          0
      FULL       =          1
      HEADERS    =          2
      TIMESTAMPS =          3
      FULL_ONCE  =          4
      FULL_RAW   = 1463898624
    end

    struct IndexEntry
      pos : Int64
      timestamp : Int64
      flags : LibC::Int
      size : LibC::Int
      min_distance : LibC::Int
    end

    type StreamInternal = Void

    struct StreamInfo
      last_dts : Int64
      duration_gcd : Int64
      duration_count : Int32
      rfps_duration_sum : Int64
      # The type for duration error might not be accurate: The C type was
      # `double (*duration_error)[2][MAX_STD_TIMEBASES];`.
      duration_error : Pointer(Pointer(Float64)) # Allocates For 2 x MAX_STD_TIMEBASES
      codec_info_duration : Int64
      codec_info_duration_fields : Int64
      found_decoder : Int32
      last_duration : Int64
      fps_first_dts : Int64
      fps_first_dts_idx : Int32
      fps_last_dts : Int64
      fps_last_dts_idx : Int32
    end

    struct Stream
      index : LibC::Int
      id : LibC::Int
      codec : LibAVCodec::CodecContext*
      priv_data : Void*
      pts : Frac
      time_base : LibAVUtil::Rational
      start_time : Int64
      duration : Int64
      nb_frames : Int64
      disposition : LibC::Int
      discard : LibAVCodec::Discard
      sample_aspect_ratio : LibAVUtil::Rational
      metadata : LibAVUtil::Dictionary*
      avg_frame_rate : LibAVUtil::Rational
      attached_pic : LibAVCodec::Packet
      side_data : LibAVCodec::PacketSideData*
      nb_side_data : LibC::Int
      event_flags : LibC::Int
      info : StreamInfo*
      pts_wrap_bits : LibC::Int
      first_dts : Int64
      cur_dts : Int64
      last_ip_pts : Int64
      last_ip_duration : LibC::Int
      probe_packets : LibC::Int
      codec_info_nb_frames : LibC::Int
      need_parsing : StreamParseType
      parser : LibAVCodec::CodecParserContext*
      last_in_packet_buffer : PacketList*
      probe_data : ProbeData
      pts_buffer : StaticArray(Int64, 17)
      index_entries : IndexEntry*
      nb_index_entries : LibC::Int
      index_entries_allocated_size : LibC::UInt
      r_frame_rate : LibAVUtil::Rational
      stream_identifier : LibC::Int
      interleaver_chunk_size : Int64
      interleaver_chunk_duration : Int64
      request_probe : LibC::Int
      skip_to_keyframe : LibC::Int
      skip_samples : LibC::Int
      start_skip_samples : Int64
      first_discard_sample : Int64
      last_discard_sample : Int64
      nb_decoded_frames : LibC::Int
      mux_ts_offset : Int64
      pts_wrap_reference : Int64
      pts_wrap_behavior : LibC::Int
      update_initial_durations_done : LibC::Int
      pts_reorder_error : StaticArray(Int64, 17)
      pts_reorder_error_count : StaticArray(UInt8, 17)
      last_dts_for_order_check : Int64
      dts_ordered : UInt8
      dts_misordered : UInt8
      inject_global_side_data : LibC::Int
      recommended_encoder_configuration : LibC::Char*
      display_aspect_ratio : LibAVUtil::Rational
      priv_pts : Frac*
      internal : StreamInternal*
      codecpar : LibAVCodec::CodecParameters*
    end

    fun stream_get_r_frame_rate = avformat_stream_get_r_frame_rate(Stream*) : LibAVUtil::Rational
    fun stream_set_r_frame_rate = avformat_stream_set_r_frame_rate(Stream*, LibAVUtil::Rational) : Void
    fun stream_get_parser = avformat_stream_get_parser(Stream*) : LibAVCodec::CodecParserContext*
    fun stream_get_recommended_encoder_configuration = avformat_stream_get_recommended_encoder_configuration(Stream*) : LibC::Char*
    fun stream_set_recommended_encoder_configuration = avformat_stream_set_recommended_encoder_configuration(Stream*, LibC::Char*) : Void
    fun stream_get_end_pts = avformat_stream_get_end_pts(Stream*) : Int64

    struct Program
      id : LibC::Int
      flags : LibC::Int
      discard : LibAVCodec::Discard
      stream_index : LibC::UInt*
      nb_stream_indexes : LibC::UInt
      metadata : LibAVUtil::Dictionary*
      program_num : LibC::Int
      pmt_pid : LibC::Int
      pcr_pid : LibC::Int
      start_time : Int64
      end_time : Int64
      pts_wrap_reference : Int64
      pts_wrap_behavior : LibC::Int
    end

    struct Chapter
      id : LibC::Int
      time_base : LibAVUtil::Rational
      start : Int64
      _end : Int64
      metadata : LibAVUtil::Dictionary*
    end

    enum DurationEstimationMethod : LibC::UInt
      DURATION_FROM_PTS     = 0
      DURATION_FROM_STREAM  = 1
      DURATION_FROM_BITRATE = 2
    end
    type FormatInternal = Void


    alias AvFormatControlMessage = (FormatContext*, LibC::Int, Void*, LibC::SizeT) -> Void
    alias OpenCallback = (FormatContext*, LibAVIO::IOContext**, LibC::Char*, LibC::Int, LibAVIO::IOInterruptCB*, LibAVUtil::Dictionary**) -> Void


    struct FormatContext
      av_class : LibAVUtil::Class*
      iformat : InputFormat*
      oformat : OutputFormat*
      priv_data : Void*
      pb : LibAVIO::IOContext*
      ctx_flags : LibC::Int
      nb_streams : LibC::UInt
      streams : Stream**
      filename : StaticArray(LibC::Char, 1024)
      start_time : Int64
      duration : Int64
      bit_rate : Int64
      packet_size : LibC::UInt
      max_delay : LibC::Int
      flags : LibC::Int
      probesize : Int64
      max_analyze_duration : Int64
      key : UInt8*
      keylen : LibC::Int
      nb_programs : LibC::UInt
      programs : Program**
      video_codec_id : LibAVCodec::CodecID
      audio_codec_id : LibAVCodec::CodecID
      subtitle_codec_id : LibAVCodec::CodecID
      max_index_size : LibC::UInt
      max_picture_buffer : LibC::UInt
      nb_chapters : LibC::UInt
      chapters : Chapter**
      metadata : LibAVUtil::Dictionary*
      start_time_realtime : Int64
      fps_probe_size : LibC::Int
      error_recognition : LibC::Int
      interrupt_callback : LibAVIO::IOInterruptCB
      debug : LibC::Int
      max_interleave_delta : Int64
      strict_std_compliance : LibC::Int
      event_flags : LibC::Int
      max_ts_probe : LibC::Int
      avoid_negative_ts : LibC::Int
      ts_id : LibC::Int
      audio_preload : LibC::Int
      max_chunk_duration : LibC::Int
      max_chunk_size : LibC::Int
      use_wallclock_as_timestamps : LibC::Int
      avio_flags : LibC::Int
      duration_estimation_method : DurationEstimationMethod
      skip_initial_bytes : Int64
      correct_ts_overflow : LibC::UInt
      seek2any : LibC::Int
      flush_packets : LibC::Int
      probe_score : LibC::Int
      format_probesize : LibC::Int
      codec_whitelist : LibC::Char*
      format_whitelist : LibC::Char*
      internal : FormatInternal*
      io_repositioned : LibC::Int
      video_codec : LibAVCodec::Codec*
      audio_codec : LibAVCodec::Codec*
      subtitle_codec : LibAVCodec::Codec*
      data_codec : LibAVCodec::Codec*
      metadata_header_padding : LibC::Int
      opaque : Void*
      control_message_cb : AvFormatControlMessage
      output_ts_offset : Int64
      dump_separator : UInt8*
      data_codec_id : LibAVCodec::CodecID
      open_cb : (FormatContext*, LibAVIO::IOContext**, LibC::Char*, LibC::Int, LibAVIO::IOInterruptCB*, LibAVUtil::Dictionary**) -> LibC::Int*
      protocol_whitelist : LibC::Char*
      io_open : (FormatContext*, LibAVIO::IOContext**, LibC::Char*, LibC::Int, LibAVUtil::Dictionary**) -> LibC::Int*
      io_close : (FormatContext*, LibAVIO::IOContext*) -> Void*
      protocol_blacklist : LibC::Char*
      max_streams : LibC::Int
    end

    fun format_get_probe_score = av_format_get_probe_score(FormatContext*) : LibC::Int
    fun format_get_video_codec = av_format_get_video_codec(FormatContext*) : LibAVCodec::Codec*
    fun format_set_video_codec = av_format_set_video_codec(FormatContext*, LibAVCodec::Codec*) : Void
    fun format_get_audio_codec = av_format_get_audio_codec(FormatContext*) : LibAVCodec::Codec*
    fun format_set_audio_codec = av_format_set_audio_codec(FormatContext*, LibAVCodec::Codec*) : Void
    fun format_get_subtitle_codec = av_format_get_subtitle_codec(FormatContext*) : LibAVCodec::Codec*
    fun format_set_subtitle_codec = av_format_set_subtitle_codec(FormatContext*, LibAVCodec::Codec*) : Void
    fun format_get_data_codec = av_format_get_data_codec(FormatContext*) : LibAVCodec::Codec*
    fun format_set_data_codec = av_format_set_data_codec(FormatContext*, LibAVCodec::Codec*) : Void
    fun format_get_metadata_header_padding = av_format_get_metadata_header_padding(FormatContext*) : LibC::Int
    fun format_set_metadata_header_padding = av_format_set_metadata_header_padding(FormatContext*, LibC::Int) : Void
    fun format_get_opaque = av_format_get_opaque(FormatContext*) : Void*
    fun format_set_opaque = av_format_set_opaque(FormatContext*, Void*) : Void
    fun format_get_control_message_cb = av_format_get_control_message_cb(FormatContext*) : AvFormatControlMessage
    fun format_set_control_message_cb = av_format_set_control_message_cb(FormatContext*, AvFormatControlMessage) : Void
    fun format_get_open_cb = av_format_get_open_cb(FormatContext*) : OpenCallback
    fun format_set_open_cb = av_format_set_open_cb(FormatContext*, OpenCallback) : Void
    fun format_inject_global_side_data = av_format_inject_global_side_data(FormatContext*) : Void
    fun fmt_ctx_get_duration_estimation_method = av_fmt_ctx_get_duration_estimation_method(FormatContext*) : DurationEstimationMethod

    struct PacketList
      pkt : LibAVCodec::Packet
      next : PacketList*
    end

    fun version = avformat_version : LibC::UInt
    fun configuration = avformat_configuration : LibC::Char*
    fun license = avformat_license : LibC::Char*
    fun register_all = av_register_all : Void
    fun register_input_format = av_register_input_format(InputFormat*) : Void
    fun register_output_format = av_register_output_format(OutputFormat*) : Void
    fun network_init = avformat_network_init : LibC::Int
    fun network_deinit = avformat_network_deinit : LibC::Int
    fun iformat_next = av_iformat_next(InputFormat*) : InputFormat*
    fun oformat_next = av_oformat_next(OutputFormat*) : OutputFormat*
    fun alloc_context = avformat_alloc_context : FormatContext*
    fun free_context = avformat_free_context(FormatContext*) : Void
    fun get_class = avformat_get_class : LibAVUtil::Class*
    fun new_stream = avformat_new_stream(FormatContext*, LibAVCodec::Codec*) : Stream*
    fun stream_add_side_data = av_stream_add_side_data(Stream*, LibAVCodec::PacketSideDataType, UInt8*, LibC::SizeT) : LibC::Int
    fun stream_new_side_data = av_stream_new_side_data(Stream*, LibAVCodec::PacketSideDataType, LibC::Int) : UInt8*
    fun stream_get_side_data = av_stream_get_side_data(Stream*, LibAVCodec::PacketSideDataType, LibC::Int*) : UInt8*
    fun new_program = av_new_program(FormatContext*, LibC::Int) : Program*
    fun alloc_output_context2 = avformat_alloc_output_context2(FormatContext**, OutputFormat*, LibC::Char*, LibC::Char*) : LibC::Int
    fun find_input_format = av_find_input_format(LibC::Char*) : InputFormat*
    fun probe_input_format = av_probe_input_format(ProbeData*, LibC::Int) : InputFormat*
    fun probe_input_format2 = av_probe_input_format2(ProbeData*, LibC::Int, LibC::Int*) : InputFormat*
    fun probe_input_format3 = av_probe_input_format3(ProbeData*, LibC::Int, LibC::Int*) : InputFormat*
    fun probe_input_buffer2 = av_probe_input_buffer2(LibAVIO::IOContext*, InputFormat**, LibC::Char*, Void*, LibC::UInt, LibC::UInt) : LibC::Int
    fun probe_input_buffer = av_probe_input_buffer(LibAVIO::IOContext*, InputFormat**, LibC::Char*, Void*, LibC::UInt, LibC::UInt) : LibC::Int
    fun open_input = avformat_open_input(FormatContext**, LibC::Char*, InputFormat*, LibAVUtil::Dictionary**) : LibC::Int
    fun demuxer_open = av_demuxer_open(FormatContext*) : LibC::Int
    fun find_stream_info = avformat_find_stream_info(FormatContext*, LibAVUtil::Dictionary**) : LibC::Int
    fun find_program_from_stream = av_find_program_from_stream(FormatContext*, Program*, LibC::Int) : Program*
    fun program_add_stream_index = av_program_add_stream_index(FormatContext*, LibC::Int, LibC::UInt) : Void
    fun find_best_stream = av_find_best_stream(FormatContext*, LibAVUtil::MediaType, LibC::Int, LibC::Int, LibAVCodec::Codec**, LibC::Int) : LibC::Int
    fun read_frame = av_read_frame(FormatContext*, LibAVCodec::Packet*) : LibC::Int
    fun seek_frame = av_seek_frame(FormatContext*, LibC::Int, Int64, LibC::Int) : LibC::Int
    fun seek_file = avformat_seek_file(FormatContext*, LibC::Int, Int64, Int64, Int64, LibC::Int) : LibC::Int
    fun flush = avformat_flush(FormatContext*) : LibC::Int
    fun read_play = av_read_play(FormatContext*) : LibC::Int
    fun read_pause = av_read_pause(FormatContext*) : LibC::Int
    fun close_input = avformat_close_input(FormatContext**) : Void
    fun write_header = avformat_write_header(FormatContext*, LibAVUtil::Dictionary**) : LibC::Int
    fun init_output = avformat_init_output(FormatContext*, LibAVUtil::Dictionary**) : LibC::Int
    fun write_frame = av_write_frame(FormatContext*, LibAVCodec::Packet*) : LibC::Int
    fun interleaved_write_frame = av_interleaved_write_frame(FormatContext*, LibAVCodec::Packet*) : LibC::Int
    fun write_uncoded_frame = av_write_uncoded_frame(FormatContext*, LibC::Int, LibAVUtil::Frame*) : LibC::Int
    fun interleaved_write_uncoded_frame = av_interleaved_write_uncoded_frame(FormatContext*, LibC::Int, LibAVUtil::Frame*) : LibC::Int
    fun write_uncoded_frame_query = av_write_uncoded_frame_query(FormatContext*, LibC::Int) : LibC::Int
    fun write_trailer = av_write_trailer(FormatContext*) : LibC::Int
    fun guess_format = av_guess_format(LibC::Char*, LibC::Char*, LibC::Char*) : OutputFormat*
    fun guess_codec = av_guess_codec(OutputFormat*, LibC::Char*, LibC::Char*, LibC::Char*, LibAVUtil::MediaType) : LibAVCodec::CodecID
    fun get_output_timestamp = av_get_output_timestamp(FormatContext*, LibC::Int, Int64*, Int64*) : LibC::Int
    fun hex_dump = av_hex_dump(FILE*, UInt8*, LibC::Int) : Void
    fun hex_dump_log = av_hex_dump_log(Void*, LibC::Int, UInt8*, LibC::Int) : Void
    fun pkt_dump2 = av_pkt_dump2(FILE*, LibAVCodec::Packet*, LibC::Int, Stream*) : Void
    fun pkt_dump_log2 = av_pkt_dump_log2(Void*, LibC::Int, LibAVCodec::Packet*, LibC::Int, Stream*) : Void
    fun codec_get_id = av_codec_get_id(CodecTag**, LibC::UInt) : LibAVCodec::CodecID
    fun codec_get_tag = av_codec_get_tag(CodecTag**, LibAVCodec::CodecID) : LibC::UInt
    fun codec_get_tag2 = av_codec_get_tag2(CodecTag**, LibAVCodec::CodecID, LibC::UInt*) : LibC::Int
    fun find_default_stream_index = av_find_default_stream_index(FormatContext*) : LibC::Int
    fun index_search_timestamp = av_index_search_timestamp(Stream*, Int64, LibC::Int) : LibC::Int
    fun add_index_entry = av_add_index_entry(Stream*, Int64, Int64, LibC::Int, LibC::Int, LibC::Int) : LibC::Int
    fun url_split = av_url_split(LibC::Char*, LibC::Int, LibC::Char*, LibC::Int, LibC::Char*, LibC::Int, LibC::Int*, LibC::Char*, LibC::Int, LibC::Char*) : Void
    fun dump_format = av_dump_format(FormatContext*, LibC::Int, LibC::Char*, LibC::Int) : Void
    fun get_frame_filename2 = av_get_frame_filename2(LibC::Char*, LibC::Int, LibC::Char*, LibC::Int, LibC::Int) : LibC::Int
    fun get_frame_filename = av_get_frame_filename(LibC::Char*, LibC::Int, LibC::Char*, LibC::Int) : LibC::Int
    fun filename_number_test = av_filename_number_test(LibC::Char*) : LibC::Int
    fun sdp_create = av_sdp_create(FormatContext**, LibC::Int, LibC::Char*, LibC::Int) : LibC::Int
    fun match_ext = av_match_ext(LibC::Char*, LibC::Char*) : LibC::Int
    fun query_codec = avformat_query_codec(OutputFormat*, LibAVCodec::CodecID, LibC::Int) : LibC::Int
    fun get_riff_video_tags = avformat_get_riff_video_tags : CodecTag*
    fun get_riff_audio_tags = avformat_get_riff_audio_tags : CodecTag*
    fun get_mov_video_tags = avformat_get_mov_video_tags : CodecTag*
    fun get_mov_audio_tags = avformat_get_mov_audio_tags : CodecTag*
    fun guess_sample_aspect_ratio = av_guess_sample_aspect_ratio(FormatContext*, Stream*, LibAVUtil::Frame*) : LibAVUtil::Rational
    fun guess_frame_rate = av_guess_frame_rate(FormatContext*, Stream*, LibAVUtil::Frame*) : LibAVUtil::Rational
    fun match_stream_specifier = avformat_match_stream_specifier(FormatContext*, Stream*, LibC::Char*) : LibC::Int
    fun queue_attached_pictures = avformat_queue_attached_pictures(FormatContext*) : LibC::Int
    fun apply_bitstream_filters = av_apply_bitstream_filters(LibAVCodec::CodecContext*, LibAVCodec::Packet*, LibAVCodec::BitStreamFilterContext*) : LibC::Int
    enum TimebaseSource : LibC::Int
      AUTO        = -1
      DECODER     =  0
      DEMUXER     =  1
      R_FRAMERATE =  2
    end
    fun transfer_internal_stream_timing_info = avformat_transfer_internal_stream_timing_info(OutputFormat*, Stream*, Stream*, TimebaseSource) : LibC::Int
    fun stream_get_codec_timebase = av_stream_get_codec_timebase(Stream*) : LibAVUtil::Rational
  end
end
