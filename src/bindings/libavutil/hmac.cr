module AV
  lib LibAVUtil
    enum HMACType : LibC::UInt
      MD5    =  0
      SHA1   =  1
      SHA224 =  2
      SHA256 =  3
      SHA384 = 12
      SHA512 = 13
    end
    type HMAC = Void
    fun hmac_alloc = av_hmac_alloc(HMACType) : HMAC*
    fun hmac_free = av_hmac_free(HMAC*) : Void
    fun hmac_init = av_hmac_init(HMAC*, Uint8T*, LibC::UInt) : Void
    fun hmac_update = av_hmac_update(HMAC*, Uint8T*, LibC::UInt) : Void
    fun hmac_final = av_hmac_final(HMAC*, UInt8*, LibC::UInt) : LibC::Int
    fun hmac_calc = av_hmac_calc(HMAC*, Uint8T*, LibC::UInt, Uint8T*, LibC::UInt, UInt8*, LibC::UInt) : LibC::Int
  end
end
