module AV
  lib LibAVUtil
    fun map_videotoolbox_format_to_pixfmt = av_map_videotoolbox_format_to_pixfmt(UInt32) : PixelFormat
    fun map_videotoolbox_format_from_pixfmt = av_map_videotoolbox_format_from_pixfmt(PixelFormat) : UInt32
  end
end
