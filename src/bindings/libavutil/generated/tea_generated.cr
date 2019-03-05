module AV
  lib LibAVUtil
    #   AVUTIL_TEA_H =
    type AVTEA = Void
    fun av_tea_alloc : AVTEA*
    fun av_tea_init(AVTEA*, StaticArray(Uint8T, 16), LibC::Int) : Void
    fun av_tea_crypt(AVTEA*, UInt8*, Uint8T*, LibC::Int, UInt8*, LibC::Int) : Void
  end
end
