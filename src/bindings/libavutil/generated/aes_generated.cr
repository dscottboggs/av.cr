module AV
  lib LibAVUtil
    #   AVUTIL_AES_H =
    type AVAES = Void
    fun av_aes_alloc : AVAES*
    fun av_aes_init(AVAES*, Uint8T*, LibC::Int, LibC::Int) : LibC::Int
    fun av_aes_crypt(AVAES*, UInt8*, Uint8T*, LibC::Int, UInt8*, LibC::Int) : Void
  end
end
