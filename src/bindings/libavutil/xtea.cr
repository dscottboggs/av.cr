module AV
  lib LibAVUtil
    struct AVXTEA
      key : StaticArray(UInt32, 16)
    end

    fun xtea_alloc = av_xtea_alloc : AVXTEA*
    fun xtea_init = av_xtea_init(AVXTEA*, StaticArray(UInt8, 16)) : Void
    fun xtea_le_init = av_xtea_le_init(AVXTEA*, StaticArray(UInt8, 16)) : Void
    fun xtea_crypt = av_xtea_crypt(AVXTEA*, UInt8*, UInt8*, LibC::Int, UInt8*, LibC::Int) : Void
    fun xtea_le_crypt = av_xtea_le_crypt(AVXTEA*, UInt8*, UInt8*, LibC::Int, UInt8*, LibC::Int) : Void
  end
end
