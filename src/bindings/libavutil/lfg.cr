module AV
  lib LibAVUtil
    struct LFG
      state : StaticArray(LibC::UInt, 64)
      index : LibC::Int
    end

    fun lfg_init = av_lfg_init(LFG*, LibC::UInt) : Void
    fun lfg_init_from_data = av_lfg_init_from_data(LFG*, Uint8T*, LibC::UInt) : LibC::Int
    fun lfg_get = av_lfg_get(LFG*) : LibC::UInt
    fun mlfg_get = av_mlfg_get(LFG*) : LibC::UInt
    fun bmg_get = av_bmg_get(LFG*, StaticArray(LibC::Double, 2)) : Void
  end
end
