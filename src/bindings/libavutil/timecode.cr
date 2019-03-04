require "./rational"
module AV
  lib LibAVUtil
    #   AVUTIL_TIMECODE_H =
    AV_TIMECODE_STR_SIZE = 23
    enum TimecodeFlag : LibC::UInt
      TC_DROPFRAME     = 1
      TC_24HOURSMAX    = 2
      TC_ALLOWNEGATIVE = 4
    end

    struct Timecode
      start : LibC::Int
      flags : UInt32
      rate : Rational
      fps : LibC::UInt
    end

    fun timecode_adjust_ntsc_framenum2 = av_timecode_adjust_ntsc_framenum2(LibC::Int, LibC::Int) : LibC::Int
    fun timecode_get_smpte_from_framenum = av_timecode_get_smpte_from_framenum(Timecode*, LibC::Int) : UInt32
    fun timecode_make_string = av_timecode_make_string(Timecode*, LibC::Char*, LibC::Int) : LibC::Char*
    fun timecode_make_smpte_tc_string = av_timecode_make_smpte_tc_string(LibC::Char*, UInt32, LibC::Int) : LibC::Char*
    fun timecode_make_mpeg_tc_string = av_timecode_make_mpeg_tc_string(LibC::Char*, UInt32) : LibC::Char*
    fun timecode_init = av_timecode_init(Timecode*, Rational, LibC::Int, LibC::Int, Void*) : LibC::Int
    fun timecode_init_from_string = av_timecode_init_from_string(Timecode*, Rational, LibC::Char*, Void*) : LibC::Int
    fun timecode_check_frame_rate = av_timecode_check_frame_rate(Rational) : LibC::Int
  end
end
