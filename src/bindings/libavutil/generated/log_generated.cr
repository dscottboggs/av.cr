module AV
  lib LibAVUtil
    #   AVUTIL_LOG_H =
    #   AV_IS_INPUT_DEVICE =  category)((( category)== AV_CLASS_CATEGORY_DEVICE_VIDEO_INPUT)||(( category)== AV_CLASS_CATEGORY_DEVICE_AUDIO_INPUT)||(( category)== AV_CLASS_CATEGORY_DEVICE_INPUT)
    #   AV_IS_OUTPUT_DEVICE =  category)((( category)== AV_CLASS_CATEGORY_DEVICE_VIDEO_OUTPUT)||(( category)== AV_CLASS_CATEGORY_DEVICE_AUDIO_OUTPUT)||(( category)== AV_CLASS_CATEGORY_DEVICE_OUTPUT)
    AV_LOG_QUIET      =  -8
    AV_LOG_PANIC      = 0o0
    AV_LOG_FATAL      =   8
    AV_LOG_ERROR      =  16
    AV_LOG_WARNING    =  24
    AV_LOG_INFO       =  32
    AV_LOG_VERBOSE    =  40
    AV_LOG_DEBUG      =  48
    AV_LOG_TRACE      =  56
    AV_LOG_MAX_OFFSET = AV_LOG_TRACE - AV_LOG_QUIET
    #   AV_LOG_C =  x)(( x)<<8
    #   av_dlog =  pctx,...) do{ if(0) av_log( pctx, AV_LOG_DEBUG, __VA_ARGS__);} while(0
    AV_LOG_SKIP_REPEATED = 1
    AV_LOG_PRINT_LEVEL   = 2
    enum AVClassCategory : LibC::UInt
      AV_CLASS_CATEGORY_NA                  =  0
      AV_CLASS_CATEGORY_INPUT               =  1
      AV_CLASS_CATEGORY_OUTPUT              =  2
      AV_CLASS_CATEGORY_MUXER               =  3
      AV_CLASS_CATEGORY_DEMUXER             =  4
      AV_CLASS_CATEGORY_ENCODER             =  5
      AV_CLASS_CATEGORY_DECODER             =  6
      AV_CLASS_CATEGORY_FILTER              =  7
      AV_CLASS_CATEGORY_BITSTREAM_FILTER    =  8
      AV_CLASS_CATEGORY_SWSCALER            =  9
      AV_CLASS_CATEGORY_SWRESAMPLER         = 10
      AV_CLASS_CATEGORY_DEVICE_VIDEO_OUTPUT = 40
      AV_CLASS_CATEGORY_DEVICE_VIDEO_INPUT  = 41
      AV_CLASS_CATEGORY_DEVICE_AUDIO_OUTPUT = 42
      AV_CLASS_CATEGORY_DEVICE_AUDIO_INPUT  = 43
      AV_CLASS_CATEGORY_DEVICE_OUTPUT       = 44
      AV_CLASS_CATEGORY_DEVICE_INPUT        = 45
      AV_CLASS_CATEGORY_NB                  = 46
    end
    type AVOptionRanges = Void

    struct AVClass
      class_name : LibC::Char*
      item_name : (Void*) -> LibC::Char**
      option : AVOption*
      version : LibC::Int
      log_level_offset_offset : LibC::Int
      parent_log_context_offset : LibC::Int
      child_next : (Void*, Void*) -> Void**
      child_class_next : (AVClass*) -> AVClass**
      category : AVClassCategory
      get_category : (Void*) -> AVClassCategory*
      query_ranges : (AVOptionRanges**, Void*, LibC::Char*, LibC::Int) -> LibC::Int*
    end

    fun av_log(Void*, LibC::Int, LibC::Char*) : Void
    fun av_vlog(Void*, LibC::Int, LibC::Char*, VaList) : Void
    fun av_log_get_level : LibC::Int
    fun av_log_set_level(LibC::Int) : Void
    fun av_log_set_callback((Void*, LibC::Int, LibC::Char*, VaListTag*) -> Void*) : Void
    fun av_log_default_callback(Void*, LibC::Int, LibC::Char*, VaList) : Void
    fun av_default_item_name(Void*) : LibC::Char*
    fun av_default_get_category(Void*) : AVClassCategory
    fun av_log_format_line(Void*, LibC::Int, LibC::Char*, VaList, LibC::Char*, LibC::Int, LibC::Int*) : Void
    fun av_log_format_line2(Void*, LibC::Int, LibC::Char*, VaList, LibC::Char*, LibC::Int, LibC::Int*) : LibC::Int
    fun av_log_set_flags(LibC::Int) : Void
    fun av_log_get_flags : LibC::Int
  end
end
