module AV
  lib LibAVUtil
    fun map_videotoolbox_format_to_pixfmt = av_map_videotoolbox_format_to_pixfmt(UInt32) : AVPixelFormat
    fun map_videotoolbox_format_from_pixfmt = av_map_videotoolbox_format_from_pixfmt(AVPixelFormat) : UInt32
  end
end
