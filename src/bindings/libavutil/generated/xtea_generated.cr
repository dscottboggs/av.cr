module AV
  lib LibAVUtil
    #   AVUTIL_XTEA_H =
    struct AVXTEA
      key : StaticArray(UInt32, 16)
    end

    fun av_xtea_alloc : AVXTEA*
    fun av_xtea_init(AVXTEA*, StaticArray(Uint8T, 16)) : Void
    fun av_xtea_le_init(AVXTEA*, StaticArray(Uint8T, 16)) : Void
    fun av_xtea_crypt(AVXTEA*, UInt8*, Uint8T*, LibC::Int, UInt8*, LibC::Int) : Void
    fun av_xtea_le_crypt(AVXTEA*, UInt8*, Uint8T*, LibC::Int, UInt8*, LibC::Int) : Void
  end
end
