module AV
  lib LibAVCodec
    #   AVFORMAT_AVFORMAT_H =
    AVPROBE_SCORE_RETRY                  = AVPROBE_SCORE_MAX/4
    AVPROBE_SCORE_STREAM_RETRY           = AVPROBE_SCORE_MAX/4 - 1
    AVPROBE_SCORE_EXTENSION              =        50
    AVPROBE_SCORE_MIME                   =        75
    AVPROBE_SCORE_MAX                    =       100
    AVPROBE_PADDING_SIZE                 =        32
    @[Flag]
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
    @[Flag]
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
    @[Flag]
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
    type AVFormatContext = Void
    type AVDeviceInfoList = Void
    type AVDeviceCapabilitiesQuery = Void
    fun av_get_packet(AVIOContext*, AVPacket*, LibC::Int) : LibC::Int
    fun av_append_packet(AVIOContext*, AVPacket*, LibC::Int) : LibC::Int

    struct AVFrac
      val : Int64T
      num : Int64T
      den : Int64T
    end

    type AVCodecTag = Void

    struct AVProbeData
      filename : LibC::Char*
      buf : LibC::Char*
      buf_size : LibC::Int
      mime_type : LibC::Char*
    end

    struct AVOutputFormat
      name : LibC::Char*
      long_name : LibC::Char*
      mime_type : LibC::Char*
      extensions : LibC::Char*
      audio_codec : AVCodecID
      video_codec : AVCodecID
      subtitle_codec : AVCodecID
      flags : LibC::Int
      codec_tag : AVCodecTag**
      priv_class : AVClass*
      next : AVOutputFormat*
      priv_data_size : LibC::Int
      write_header : (AVFormatContext*) -> LibC::Int*
      write_packet : (AVFormatContext*, AVPacket*) -> LibC::Int*
      write_trailer : (AVFormatContext*) -> LibC::Int*
      interleave_packet : (AVFormatContext*, AVPacket*, AVPacket*, LibC::Int) -> LibC::Int*
      query_codec : (AVCodecID, LibC::Int) -> LibC::Int*
      get_output_timestamp : (AVFormatContext*, LibC::Int, LibC::Long*, LibC::Long*) -> Void*
      control_message : (AVFormatContext*, LibC::Int, Void*, LibC::ULong) -> LibC::Int*
      write_uncoded_frame : (AVFormatContext*, LibC::Int, AVFrame**, LibC::UInt) -> LibC::Int*
      get_device_list : (AVFormatContext*, AVDeviceInfoList*) -> LibC::Int*
      create_device_capabilities : (AVFormatContext*, AVDeviceCapabilitiesQuery*) -> LibC::Int*
      free_device_capabilities : (AVFormatContext*, AVDeviceCapabilitiesQuery*) -> LibC::Int*
      data_codec : AVCodecID
      init : (AVFormatContext*) -> LibC::Int*
      deinit : (AVFormatContext*) -> Void*
      check_bitstream : (AVFormatContext*, AVPacket*) -> LibC::Int*
    end

    struct AVInputFormat
      name : LibC::Char*
      long_name : LibC::Char*
      flags : LibC::Int
      extensions : LibC::Char*
      codec_tag : AVCodecTag**
      priv_class : AVClass*
      mime_type : LibC::Char*
      next : AVInputFormat*
      raw_codec_id : LibC::Int
      priv_data_size : LibC::Int
      read_probe : (AVProbeData*) -> LibC::Int*
      read_header : (AVFormatContext*) -> LibC::Int*
      read_packet : (AVFormatContext*, AVPacket*) -> LibC::Int*
      read_close : (AVFormatContext*) -> LibC::Int*
      read_seek : (AVFormatContext*, LibC::Int, LibC::Long, LibC::Int) -> LibC::Int*
      read_timestamp : (AVFormatContext*, LibC::Int, LibC::Long*, LibC::Long) -> LibC::Long*
      read_play : (AVFormatContext*) -> LibC::Int*
      read_pause : (AVFormatContext*) -> LibC::Int*
      read_seek2 : (AVFormatContext*, LibC::Int, LibC::Long, LibC::Long, LibC::Long, LibC::Int) -> LibC::Int*
      get_device_list : (AVFormatContext*, AVDeviceInfoList*) -> LibC::Int*
      create_device_capabilities : (AVFormatContext*, AVDeviceCapabilitiesQuery*) -> LibC::Int*
      free_device_capabilities : (AVFormatContext*, AVDeviceCapabilitiesQuery*) -> LibC::Int*
    end

    enum AVStreamParseType : LibC::UInt
      NONE       =          0
      FULL       =          1
      HEADERS    =          2
      TIMESTAMPS =          3
      FULL_ONCE  =          4
      FULL_RAW   = 1463898624
    end

    struct AVIndexEntry
      pos : Int64T
      timestamp : Int64T
      flags : LibC::Int
      size : LibC::Int
      min_distance : LibC::Int
    end

    type AVStreamInternal = Void

    struct AVStreamInfo
      last_dts : Int64
      duration_gcd : Int64
      duration_count : Int32
      rfps_duration_sum : Int64
      # The type for duration error might not be accurate: The C type was
      # `double (*duration_error)[2][MAX_STD_TIMEBASES];`.
      duration_error : Pointer(Pointer(Float64)) # Allocates For 2 x MAX_STD_TIMEBASES
      codec_info_duration : Int64
      codec_info_duration : Int64
      found_decoder : Int32
      last_duration : Int64
      fps_first_dts : Int64
      fps_first_dts_idx : Int32
      fps_last_dts : Int64
      fps_last_dts_idx : Int32
    end

    struct AVStream
      index : LibC::Int
      id : LibC::Int
      codec : AVCodecContext*
      priv_data : Void*
      pts : AVFrac
      time_base : AVRational
      start_time : Int64T
      duration : Int64T
      nb_frames : Int64T
      disposition : LibC::Int
      discard : AVDiscard
      sample_aspect_ratio : AVRational
      metadata : AVDictionary*
      avg_frame_rate : AVRational
      attached_pic : AVPacket
      side_data : AVPacketSideData*
      nb_side_data : LibC::Int
      event_flags : LibC::Int
      info : AVStreamInfo*
      pts_wrap_bits : LibC::Int
      first_dts : Int64T
      cur_dts : Int64T
      last_ip_pts : Int64T
      last_ip_duration : LibC::Int
      probe_packets : LibC::Int
      codec_info_nb_frames : LibC::Int
      need_parsing : AVStreamParseType
      parser : AVCodecParserContext*
      last_in_packet_buffer : AVPacketList*
      probe_data : AVProbeData
      pts_buffer : StaticArray(Int64T, 17)
      index_entries : AVIndexEntry*
      nb_index_entries : LibC::Int
      index_entries_allocated_size : LibC::UInt
      r_frame_rate : AVRational
      stream_identifier : LibC::Int
      interleaver_chunk_size : Int64T
      interleaver_chunk_duration : Int64T
      request_probe : LibC::Int
      skip_to_keyframe : LibC::Int
      skip_samples : LibC::Int
      start_skip_samples : Int64T
      first_discard_sample : Int64T
      last_discard_sample : Int64T
      nb_decoded_frames : LibC::Int
      mux_ts_offset : Int64T
      pts_wrap_reference : Int64T
      pts_wrap_behavior : LibC::Int
      update_initial_durations_done : LibC::Int
      pts_reorder_error : StaticArray(Int64T, 17)
      pts_reorder_error_count : StaticArray(UInt8, 17)
      last_dts_for_order_check : Int64T
      dts_ordered : UInt8
      dts_misordered : UInt8
      inject_global_side_data : LibC::Int
      recommended_encoder_configuration : LibC::Char*
      display_aspect_ratio : AVRational
      priv_pts : FFFrac*
      internal : AVStreamInternal*
      codecpar : AVCodecParameters*
    end

    fun av_stream_get_r_frame_rate(AVStream*) : AVRational
    fun av_stream_set_r_frame_rate(AVStream*, AVRational) : Void
    fun av_stream_get_parser(AVStream*) : AVCodecParserContext*
    fun av_stream_get_recommended_encoder_configuration(AVStream*) : LibC::Char*
    fun av_stream_set_recommended_encoder_configuration(AVStream*, LibC::Char*) : Void
    fun av_stream_get_end_pts(AVStream*) : Int64T

    struct AVProgram
      id : LibC::Int
      flags : LibC::Int
      discard : AVDiscard
      stream_index : LibC::UInt*
      nb_stream_indexes : LibC::UInt
      metadata : AVDictionary*
      program_num : LibC::Int
      pmt_pid : LibC::Int
      pcr_pid : LibC::Int
      start_time : Int64T
      end_time : Int64T
      pts_wrap_reference : Int64T
      pts_wrap_behavior : LibC::Int
    end

    struct AVChapter
      id : LibC::Int
      time_base : AVRational
      start : Int64T
      _end : Int64T
      metadata : AVDictionary*
    end

    alias AvFormatControlMessage = (AVFormatContext*, LibC::Int, Void*, SizeT) -> Void
    alias AVOpenCallback = (AVFormatContext*, AVIOContext**, LibC::Char*, LibC::Int, AVIOInterruptCB*, AVDictionary**) -> Void
    enum AVDurationEstimationMethod : LibC::UInt
      DURATION_FROM_PTS     = 0
      DURATION_FROM_STREAM  = 1
      DURATION_FROM_BITRATE = 2
    end
    type AVFormatInternal = Void

    struct AVFormatContext
      av_class : AVClass*
      iformat : AVInputFormat*
      oformat : AVOutputFormat*
      priv_data : Void*
      pb : AVIOContext*
      ctx_flags : LibC::Int
      nb_streams : LibC::UInt
      streams : AVStream**
      filename : StaticArray(LibC::Char, 1024)
      start_time : Int64T
      duration : Int64T
      bit_rate : Int64T
      packet_size : LibC::UInt
      max_delay : LibC::Int
      flags : LibC::Int
      probesize : Int64T
      max_analyze_duration : Int64T
      key : Uint8T*
      keylen : LibC::Int
      nb_programs : LibC::UInt
      programs : AVProgram**
      video_codec_id : AVCodecID
      audio_codec_id : AVCodecID
      subtitle_codec_id : AVCodecID
      max_index_size : LibC::UInt
      max_picture_buffer : LibC::UInt
      nb_chapters : LibC::UInt
      chapters : AVChapter**
      metadata : AVDictionary*
      start_time_realtime : Int64T
      fps_probe_size : LibC::Int
      error_recognition : LibC::Int
      interrupt_callback : AVIOInterruptCB
      debug : LibC::Int
      max_interleave_delta : Int64T
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
      duration_estimation_method : AVDurationEstimationMethod
      skip_initial_bytes : Int64T
      correct_ts_overflow : LibC::UInt
      seek2any : LibC::Int
      flush_packets : LibC::Int
      probe_score : LibC::Int
      format_probesize : LibC::Int
      codec_whitelist : LibC::Char*
      format_whitelist : LibC::Char*
      internal : AVFormatInternal*
      io_repositioned : LibC::Int
      video_codec : AVCodec*
      audio_codec : AVCodec*
      subtitle_codec : AVCodec*
      data_codec : AVCodec*
      metadata_header_padding : LibC::Int
      opaque : Void*
      control_message_cb : AvFormatControlMessage
      output_ts_offset : Int64T
      dump_separator : UInt8*
      data_codec_id : AVCodecID
      open_cb : (AVFormatContext*, AVIOContext**, LibC::Char*, LibC::Int, AVIOInterruptCB*, AVDictionary**) -> LibC::Int*
      protocol_whitelist : LibC::Char*
      io_open : (AVFormatContext*, AVIOContext**, LibC::Char*, LibC::Int, AVDictionary**) -> LibC::Int*
      io_close : (AVFormatContext*, AVIOContext*) -> Void*
      protocol_blacklist : LibC::Char*
      max_streams : LibC::Int
    end

    fun av_format_get_probe_score(AVFormatContext*) : LibC::Int
    fun av_format_get_video_codec(AVFormatContext*) : AVCodec*
    fun av_format_set_video_codec(AVFormatContext*, AVCodec*) : Void
    fun av_format_get_audio_codec(AVFormatContext*) : AVCodec*
    fun av_format_set_audio_codec(AVFormatContext*, AVCodec*) : Void
    fun av_format_get_subtitle_codec(AVFormatContext*) : AVCodec*
    fun av_format_set_subtitle_codec(AVFormatContext*, AVCodec*) : Void
    fun av_format_get_data_codec(AVFormatContext*) : AVCodec*
    fun av_format_set_data_codec(AVFormatContext*, AVCodec*) : Void
    fun av_format_get_metadata_header_padding(AVFormatContext*) : LibC::Int
    fun av_format_set_metadata_header_padding(AVFormatContext*, LibC::Int) : Void
    fun av_format_get_opaque(AVFormatContext*) : Void*
    fun av_format_set_opaque(AVFormatContext*, Void*) : Void
    fun av_format_get_control_message_cb(AVFormatContext*) : AvFormatControlMessage
    fun av_format_set_control_message_cb(AVFormatContext*, AvFormatControlMessage) : Void
    fun av_format_get_open_cb(AVFormatContext*) : AVOpenCallback
    fun av_format_set_open_cb(AVFormatContext*, AVOpenCallback) : Void
    fun av_format_inject_global_side_data(AVFormatContext*) : Void
    fun av_fmt_ctx_get_duration_estimation_method(AVFormatContext*) : AVDurationEstimationMethod

    struct AVPacketList
      pkt : AVPacket
      next : AVPacketList*
    end

    fun avformat_version : LibC::UInt
    fun avformat_configuration : LibC::Char*
    fun avformat_license : LibC::Char*
    fun av_register_all : Void
    fun av_register_input_format(AVInputFormat*) : Void
    fun av_register_output_format(AVOutputFormat*) : Void
    fun avformat_network_init : LibC::Int
    fun avformat_network_deinit : LibC::Int
    fun av_iformat_next(AVInputFormat*) : AVInputFormat*
    fun av_oformat_next(AVOutputFormat*) : AVOutputFormat*
    fun avformat_alloc_context : AVFormatContext*
    fun avformat_free_context(AVFormatContext*) : Void
    fun avformat_get_class : AVClass*
    fun avformat_new_stream(AVFormatContext*, AVCodec*) : AVStream*
    fun av_stream_add_side_data(AVStream*, AVPacketSideDataType, UInt8*, SizeT) : LibC::Int
    fun av_stream_new_side_data(AVStream*, AVPacketSideDataType, LibC::Int) : UInt8*
    fun av_stream_get_side_data(AVStream*, AVPacketSideDataType, LibC::Int*) : UInt8*
    fun av_new_program(AVFormatContext*, LibC::Int) : AVProgram*
    fun avformat_alloc_output_context2(AVFormatContext**, AVOutputFormat*, LibC::Char*, LibC::Char*) : LibC::Int
    fun av_find_input_format(LibC::Char*) : AVInputFormat*
    fun av_probe_input_format(AVProbeData*, LibC::Int) : AVInputFormat*
    fun av_probe_input_format2(AVProbeData*, LibC::Int, LibC::Int*) : AVInputFormat*
    fun av_probe_input_format3(AVProbeData*, LibC::Int, LibC::Int*) : AVInputFormat*
    fun av_probe_input_buffer2(AVIOContext*, AVInputFormat**, LibC::Char*, Void*, LibC::UInt, LibC::UInt) : LibC::Int
    fun av_probe_input_buffer(AVIOContext*, AVInputFormat**, LibC::Char*, Void*, LibC::UInt, LibC::UInt) : LibC::Int
    fun avformat_open_input(AVFormatContext**, LibC::Char*, AVInputFormat*, AVDictionary**) : LibC::Int
    fun av_demuxer_open(AVFormatContext*) : LibC::Int
    fun avformat_find_stream_info(AVFormatContext*, AVDictionary**) : LibC::Int
    fun av_find_program_from_stream(AVFormatContext*, AVProgram*, LibC::Int) : AVProgram*
    fun av_program_add_stream_index(AVFormatContext*, LibC::Int, LibC::UInt) : Void
    fun av_find_best_stream(AVFormatContext*, AVMediaType, LibC::Int, LibC::Int, AVCodec**, LibC::Int) : LibC::Int
    fun av_read_frame(AVFormatContext*, AVPacket*) : LibC::Int
    fun av_seek_frame(AVFormatContext*, LibC::Int, Int64T, LibC::Int) : LibC::Int
    fun avformat_seek_file(AVFormatContext*, LibC::Int, Int64T, Int64T, Int64T, LibC::Int) : LibC::Int
    fun avformat_flush(AVFormatContext*) : LibC::Int
    fun av_read_play(AVFormatContext*) : LibC::Int
    fun av_read_pause(AVFormatContext*) : LibC::Int
    fun avformat_close_input(AVFormatContext**) : Void
    fun avformat_write_header(AVFormatContext*, AVDictionary**) : LibC::Int
    fun avformat_init_output(AVFormatContext*, AVDictionary**) : LibC::Int
    fun av_write_frame(AVFormatContext*, AVPacket*) : LibC::Int
    fun av_interleaved_write_frame(AVFormatContext*, AVPacket*) : LibC::Int
    fun av_write_uncoded_frame(AVFormatContext*, LibC::Int, AVFrame*) : LibC::Int
    fun av_interleaved_write_uncoded_frame(AVFormatContext*, LibC::Int, AVFrame*) : LibC::Int
    fun av_write_uncoded_frame_query(AVFormatContext*, LibC::Int) : LibC::Int
    fun av_write_trailer(AVFormatContext*) : LibC::Int
    fun av_guess_format(LibC::Char*, LibC::Char*, LibC::Char*) : AVOutputFormat*
    fun av_guess_codec(AVOutputFormat*, LibC::Char*, LibC::Char*, LibC::Char*, AVMediaType) : AVCodecID
    fun av_get_output_timestamp(AVFormatContext*, LibC::Int, Int64T*, Int64T*) : LibC::Int
    fun av_hex_dump(FILE*, Uint8T*, LibC::Int) : Void
    fun av_hex_dump_log(Void*, LibC::Int, Uint8T*, LibC::Int) : Void
    fun av_pkt_dump2(FILE*, AVPacket*, LibC::Int, AVStream*) : Void
    fun av_pkt_dump_log2(Void*, LibC::Int, AVPacket*, LibC::Int, AVStream*) : Void
    fun av_codec_get_id(AVCodecTag**, LibC::UInt) : AVCodecID
    fun av_codec_get_tag(AVCodecTag**, AVCodecID) : LibC::UInt
    fun av_codec_get_tag2(AVCodecTag**, AVCodecID, LibC::UInt*) : LibC::Int
    fun av_find_default_stream_index(AVFormatContext*) : LibC::Int
    fun av_index_search_timestamp(AVStream*, Int64T, LibC::Int) : LibC::Int
    fun av_add_index_entry(AVStream*, Int64T, Int64T, LibC::Int, LibC::Int, LibC::Int) : LibC::Int
    fun av_url_split(LibC::Char*, LibC::Int, LibC::Char*, LibC::Int, LibC::Char*, LibC::Int, LibC::Int*, LibC::Char*, LibC::Int, LibC::Char*) : Void
    fun av_dump_format(AVFormatContext*, LibC::Int, LibC::Char*, LibC::Int) : Void
    fun av_get_frame_filename2(LibC::Char*, LibC::Int, LibC::Char*, LibC::Int, LibC::Int) : LibC::Int
    fun av_get_frame_filename(LibC::Char*, LibC::Int, LibC::Char*, LibC::Int) : LibC::Int
    fun av_filename_number_test(LibC::Char*) : LibC::Int
    fun av_sdp_create(AVFormatContext**, LibC::Int, LibC::Char*, LibC::Int) : LibC::Int
    fun av_match_ext(LibC::Char*, LibC::Char*) : LibC::Int
    fun avformat_query_codec(AVOutputFormat*, AVCodecID, LibC::Int) : LibC::Int
    fun avformat_get_riff_video_tags : AVCodecTag*
    fun avformat_get_riff_audio_tags : AVCodecTag*
    fun avformat_get_mov_video_tags : AVCodecTag*
    fun avformat_get_mov_audio_tags : AVCodecTag*
    fun av_guess_sample_aspect_ratio(AVFormatContext*, AVStream*, AVFrame*) : AVRational
    fun av_guess_frame_rate(AVFormatContext*, AVStream*, AVFrame*) : AVRational
    fun avformat_match_stream_specifier(AVFormatContext*, AVStream*, LibC::Char*) : LibC::Int
    fun avformat_queue_attached_pictures(AVFormatContext*) : LibC::Int
    fun av_apply_bitstream_filters(AVCodecContext*, AVPacket*, AVBitStreamFilterContext*) : LibC::Int
    enum AVTimebaseSource : LibC::Int
      AUTO        = -1
      DECODER     =  0
      DEMUXER     =  1
      R_FRAMERATE =  2
    end
    fun avformat_transfer_internal_stream_timing_info(AVOutputFormat*, AVStream*, AVStream*, AVTimebaseSource) : LibC::Int
    fun av_stream_get_codec_timebase(AVStream*) : AVRational
  end
end
