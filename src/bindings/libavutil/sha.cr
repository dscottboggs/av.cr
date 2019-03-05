module AV
  lib LibAVUtil
    #   AVUTIL_SHA_H =
    type AVSHA = Void
    fun sha_alloc = av_sha_alloc : AVSHA*
    fun sha_init = av_sha_init(AVSHA*, LibC::Int) : LibC::Int
    fun sha_update = av_sha_update(AVSHA*, UInt8*, LibC::UInt) : Void
    fun sha_final = av_sha_final(AVSHA*, UInt8*) : Void
  end
end
