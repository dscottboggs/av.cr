module AV
  lib LibAVUtil
    alias PixelutilsSadFn = (Uint8T*, PtrdiffT, Uint8T*, PtrdiffT) -> Void
    fun pixelutils_get_sad_fn = av_pixelutils_get_sad_fn(LibC::Int, LibC::Int, LibC::Int, Void*) : PixelutilsSadFn
  end
end
