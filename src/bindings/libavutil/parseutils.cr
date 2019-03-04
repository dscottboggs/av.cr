module AV
  lib LibAVUtil
    #   av_parse_ratio_quiet =  rate, str, max) av_parse_ratio( rate, str, max, AV_LOG_MAX_OFFSET, NULL
    fun parse_ratio = av_parse_ratio(AVRational*, LibC::Char*, LibC::Int, LibC::Int, Void*) : LibC::Int
    fun parse_video_size = av_parse_video_size(LibC::Int*, LibC::Int*, LibC::Char*) : LibC::Int
    fun parse_video_rate = av_parse_video_rate(AVRational*, LibC::Char*) : LibC::Int
    fun parse_color = av_parse_color(UInt8*, LibC::Char*, LibC::Int, Void*) : LibC::Int
    fun get_known_color_name = av_get_known_color_name(LibC::Int, Uint8T**) : LibC::Char*
    fun parse_time = av_parse_time(Int64T*, LibC::Char*, LibC::Int) : LibC::Int
    fun find_info_tag = av_find_info_tag(LibC::Char*, LibC::Int, LibC::Char*, LibC::Char*) : LibC::Int
    fun small_strptime = av_small_strptime(LibC::Char*, LibC::Char*, Tm*) : LibC::Char*
    fun timegm = av_timegm(Tm*) : TimeT
  end
end
