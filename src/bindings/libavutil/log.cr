module AV
  lib LibAVUtil
    #   AV_IS_INPUT_DEVICE =  category)((( category)== AV_CLASS_CATEGORY_DEVICE_VIDEO_INPUT)||(( category)== AV_CLASS_CATEGORY_DEVICE_AUDIO_INPUT)||(( category)== AV_CLASS_CATEGORY_DEVICE_INPUT)
    #   AV_IS_OUTPUT_DEVICE =  category)((( category)== AV_CLASS_CATEGORY_DEVICE_VIDEO_OUTPUT)||(( category)== AV_CLASS_CATEGORY_DEVICE_AUDIO_OUTPUT)||(( category)== AV_CLASS_CATEGORY_DEVICE_OUTPUT)
    enum LogLevel
      QUIET      =  -8
      PANIC      = 0o0
      FATAL      =   8
      ERROR      =  16
      WARNING    =  24
      INFO       =  32
      VERBOSE    =  40
      DEBUG      =  48
      TRACE      =  56
      MAX_OFFSET = TRACE - QUIET
    end
    #   AV_LOG_C =  x)(( x)<<8
    #   av_dlog =  pctx,...) do{ if(0) av_log( pctx, AV_LOG_DEBUG, __VA_ARGS__);} while(0
    AV_LOG_SKIP_REPEATED = 1
    AV_LOG_PRINT_LEVEL   = 2
    enum ClassCategory : LibC::UInt
      NA                  =  0
      INPUT               =  1
      OUTPUT              =  2
      MUXER               =  3
      DEMUXER             =  4
      ENCODER             =  5
      DECODER             =  6
      FILTER              =  7
      BITSTREAM_FILTER    =  8
      SWSCALER            =  9
      SWRESAMPLER         = 10
      DEVICE_VIDEO_OUTPUT = 40
      DEVICE_VIDEO_INPUT  = 41
      DEVICE_AUDIO_OUTPUT = 42
      DEVICE_AUDIO_INPUT  = 43
      DEVICE_OUTPUT       = 44
      DEVICE_INPUT        = 45
      NB                  = 46
    end
    type OptionRanges = Void

    struct Class
      class_name : LibC::Char*
      item_name : (Void*) -> LibC::Char**
      option : Option*
      version : LibC::Int
      log_level_offset_offset : LibC::Int
      parent_log_context_offset : LibC::Int
      child_next : (Void*, Void*) -> Void**
      child_class_next : (Class*) -> Class**
      category : ClassCategory
      get_category : (Void*) -> ClassCategory*
      query_ranges : (OptionRanges**, Void*, LibC::Char*, LibC::Int) -> LibC::Int*
    end

    fun av_log(Void*, LibC::Int, LibC::Char*) : Void
    fun av_vlog(Void*, LibC::Int, LibC::Char*, VaList) : Void
    fun av_log_get_level : LibC::Int
    fun av_log_set_level(LibC::Int) : Void
    fun av_log_set_callback((Void*, LibC::Int, LibC::Char*, VaListTag*) -> Void*) : Void
    fun av_log_default_callback(Void*, LibC::Int, LibC::Char*, VaList) : Void
    fun av_default_item_name(Void*) : LibC::Char*
    fun av_default_get_category(Void*) : ClassCategory
    fun av_log_format_line(Void*, LibC::Int, LibC::Char*, VaList, LibC::Char*, LibC::Int, LibC::Int*) : Void
    fun av_log_format_line2(Void*, LibC::Int, LibC::Char*, VaList, LibC::Char*, LibC::Int, LibC::Int*) : LibC::Int
    fun av_log_set_flags(LibC::Int) : Void
    fun av_log_get_flags : LibC::Int
  end
end
