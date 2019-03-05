module AV
  lib LibAVUtil
    #   AVUTIL_TIMECODE_H =
    AV_TIMECODE_STR_SIZE = 23
    enum AVTimecodeFlag : LibC::UInt
      AV_TIMECODE_FLAG_DROPFRAME     = 1
      AV_TIMECODE_FLAG_24HOURSMAX    = 2
      AV_TIMECODE_FLAG_ALLOWNEGATIVE = 4
    end

    struct AVTimecode
      start : LibC::Int
      flags : UInt32
      rate : AVRational
      fps : LibC::UInt
    end

    fun av_timecode_adjust_ntsc_framenum2(LibC::Int, LibC::Int) : LibC::Int
    fun av_timecode_get_smpte_from_framenum(AVTimecode*, LibC::Int) : UInt32
    fun av_timecode_make_string(AVTimecode*, LibC::Char*, LibC::Int) : LibC::Char*
    fun av_timecode_make_smpte_tc_string(LibC::Char*, UInt32, LibC::Int) : LibC::Char*
    fun av_timecode_make_mpeg_tc_string(LibC::Char*, UInt32) : LibC::Char*
    fun av_timecode_init(AVTimecode*, AVRational, LibC::Int, LibC::Int, Void*) : LibC::Int
    fun av_timecode_init_from_string(AVTimecode*, AVRational, LibC::Char*, Void*) : LibC::Int
    fun av_timecode_check_frame_rate(AVRational) : LibC::Int
  end
end
