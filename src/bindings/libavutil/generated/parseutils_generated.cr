module AV
  lib LibAVUtil
    #   AVUTIL_PARSEUTILS_H =
    #   av_parse_ratio_quiet =  rate, str, max) av_parse_ratio( rate, str, max, AV_LOG_MAX_OFFSET, NULL
    fun av_parse_ratio(AVRational*, LibC::Char*, LibC::Int, LibC::Int, Void*) : LibC::Int
    fun av_parse_video_size(LibC::Int*, LibC::Int*, LibC::Char*) : LibC::Int
    fun av_parse_video_rate(AVRational*, LibC::Char*) : LibC::Int
    fun av_parse_color(UInt8*, LibC::Char*, LibC::Int, Void*) : LibC::Int
    fun av_get_known_color_name(LibC::Int, Uint8T**) : LibC::Char*
    fun av_parse_time(Int64T*, LibC::Char*, LibC::Int) : LibC::Int
    fun av_find_info_tag(LibC::Char*, LibC::Int, LibC::Char*, LibC::Char*) : LibC::Int
    fun av_small_strptime(LibC::Char*, LibC::Char*, Tm*) : LibC::Char*
    fun av_timegm(Tm*) : TimeT
  end
end
