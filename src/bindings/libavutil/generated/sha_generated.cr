module AV
  lib LibAVUtil
    #   AVUTIL_SHA_H =
    type AVSHA = Void
    fun av_sha_alloc : AVSHA*
    fun av_sha_init(AVSHA*, LibC::Int) : LibC::Int
    fun av_sha_update(AVSHA*, Uint8T*, LibC::UInt) : Void
    fun av_sha_final(AVSHA*, UInt8*) : Void
  end
end
