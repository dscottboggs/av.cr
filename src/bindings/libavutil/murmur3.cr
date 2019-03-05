module AV
  lib LibAVUtil
    type MurMur3 = Void
    fun murmur3_alloc = av_murmur3_alloc : MurMur3*
    fun murmur3_init_seeded = av_murmur3_init_seeded(MurMur3*, UInt64) : Void
    fun murmur3_init = av_murmur3_init(MurMur3*) : Void
    fun murmur3_update = av_murmur3_update(MurMur3*, UInt8*, LibC::Int) : Void
    fun murmur3_final = av_murmur3_final(MurMur3*, StaticArray(UInt8, 16)) : Void
  end
end
