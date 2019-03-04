module AV
  lib LibAVUtil
    #   AVUTIL_RIPEMD_H =
    type RipeMD = Void
    fun ripemd_alloc = av_ripemd_alloc : RipeMD*
    fun ripemd_init = av_ripemd_init(RipeMD*, LibC::Int) : LibC::Int
    fun ripemd_update = av_ripemd_update(RipeMD*, Uint8T*, LibC::UInt) : Void
    fun ripemd_final = av_ripemd_final(RipeMD*, UInt8*) : Void
  end
end
