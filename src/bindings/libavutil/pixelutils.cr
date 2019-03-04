module AV
  lib LibAVUtil
    alias PixelutilsSadFn = (UInt8*, PtrdiffT, UInt8*, PtrdiffT) -> Void
    fun pixelutils_get_sad_fn = av_pixelutils_get_sad_fn(LibC::Int, LibC::Int, LibC::Int, Void*) : PixelutilsSadFn
  end
end
