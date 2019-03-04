module AV
  lib LibAVUtil
    #   AVUTIL_SHA512_H =
    type AVSHA512 = Void
    fun sha512_alloc = av_sha512_alloc : AVSHA512*
    fun sha512_init = av_sha512_init(AVSHA512*, LibC::Int) : LibC::Int
    fun sha512_update = av_sha512_update(AVSHA512*, UInt8*, LibC::UInt) : Void
    fun sha512_final = av_sha512_final(AVSHA512*, UInt8*) : Void
  end
end
