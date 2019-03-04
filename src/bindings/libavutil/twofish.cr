module AV
  lib LibAVUtil
    #   AVUTIL_TWOFISH_H =
    type TwoFish = Void
    fun twofish_alloc = av_twofish_alloc : TwoFish*
    fun twofish_init = av_twofish_init(TwoFish*, Uint8T*, LibC::Int) : LibC::Int
    fun twofish_crypt = av_twofish_crypt(TwoFish*, UInt8*, Uint8T*, LibC::Int, UInt8*, LibC::Int) : Void
  end
end
