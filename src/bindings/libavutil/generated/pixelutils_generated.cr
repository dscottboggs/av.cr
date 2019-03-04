module AV
  lib LibAVUtil
    #   AVUTIL_PIXELUTILS_H =
    alias AvPixelutilsSadFn = (Uint8T*, PtrdiffT, Uint8T*, PtrdiffT) -> Void
    fun av_pixelutils_get_sad_fn(LibC::Int, LibC::Int, LibC::Int, Void*) : AvPixelutilsSadFn
  end
end
