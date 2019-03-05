module AV
  lib LibAVUtil
    #   AVUTIL_MURMUR3_H =
    type AVMurMur3 = Void
    fun av_murmur3_alloc : AVMurMur3*
    fun av_murmur3_init_seeded(AVMurMur3*, UInt64) : Void
    fun av_murmur3_init(AVMurMur3*) : Void
    fun av_murmur3_update(AVMurMur3*, Uint8T*, LibC::Int) : Void
    fun av_murmur3_final(AVMurMur3*, StaticArray(UInt8, 16)) : Void
  end
end
