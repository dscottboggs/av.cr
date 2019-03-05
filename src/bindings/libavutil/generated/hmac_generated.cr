module AV
  lib LibAVUtil
    #   AVUTIL_HMAC_H =
    enum AVHMACType : LibC::UInt
      AV_HMAC_MD5    =  0
      AV_HMAC_SHA1   =  1
      AV_HMAC_SHA224 =  2
      AV_HMAC_SHA256 =  3
      AV_HMAC_SHA384 = 12
      AV_HMAC_SHA512 = 13
    end
    type AVHMAC = Void
    fun av_hmac_alloc(AVHMACType) : AVHMAC*
    fun av_hmac_free(AVHMAC*) : Void
    fun av_hmac_init(AVHMAC*, Uint8T*, LibC::UInt) : Void
    fun av_hmac_update(AVHMAC*, Uint8T*, LibC::UInt) : Void
    fun av_hmac_final(AVHMAC*, UInt8*, LibC::UInt) : LibC::Int
    fun av_hmac_calc(AVHMAC*, Uint8T*, LibC::UInt, Uint8T*, LibC::UInt, UInt8*, LibC::UInt) : LibC::Int
  end
end
