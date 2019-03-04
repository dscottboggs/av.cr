module AV
  lib LibAVUtil
    #   AVUTIL_SHA512_H =
    type AVSHA512 = Void
    fun av_sha512_alloc : AVSHA512*
    fun av_sha512_init(AVSHA512*, LibC::Int) : LibC::Int
    fun av_sha512_update(AVSHA512*, Uint8T*, LibC::UInt) : Void
    fun av_sha512_final(AVSHA512*, UInt8*) : Void
  end
end
