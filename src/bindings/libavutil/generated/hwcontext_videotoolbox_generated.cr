module AV
  lib LibAVUtil
    #   AVUTIL_HWCONTEXT_VIDEOTOOLBOX_H =
    fun av_map_videotoolbox_format_to_pixfmt(UInt32) : AVPixelFormat
    fun av_map_videotoolbox_format_from_pixfmt(AVPixelFormat) : UInt32
  end
end
