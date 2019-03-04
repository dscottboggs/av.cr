module AV
  lib LibAVUtil
    #   AVUTIL_TEA_H =
    type TEA = Void
    fun tea_alloc = av_tea_alloc : AVTEA*
    fun tea_init = av_tea_init(AVTEA*, StaticArray(UInt8, 16), LibC::Int) : Void
    fun tea_crypt = av_tea_crypt(AVTEA*, UInt8*, UInt8*, LibC::Int, UInt8*, LibC::Int) : Void
  end
end
