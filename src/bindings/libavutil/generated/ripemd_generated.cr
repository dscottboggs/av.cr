module AV
  lib LibAVUtil
    #   AVUTIL_RIPEMD_H =
    type AVRIPEMD = Void
    fun av_ripemd_alloc : AVRIPEMD*
    fun av_ripemd_init(AVRIPEMD*, LibC::Int) : LibC::Int
    fun av_ripemd_update(AVRIPEMD*, Uint8T*, LibC::UInt) : Void
    fun av_ripemd_final(AVRIPEMD*, UInt8*) : Void
  end
end
