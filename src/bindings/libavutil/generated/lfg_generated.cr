module AV
  lib LibAVUtil
    #   AVUTIL_LFG_H =
    struct AVLFG
      state : StaticArray(LibC::UInt, 64)
      index : LibC::Int
    end

    fun av_lfg_init(AVLFG*, LibC::UInt) : Void
    fun av_lfg_init_from_data(AVLFG*, Uint8T*, LibC::UInt) : LibC::Int
    fun av_lfg_get(AVLFG*) : LibC::UInt
    fun av_mlfg_get(AVLFG*) : LibC::UInt
    fun av_bmg_get(AVLFG*, StaticArray(LibC::Double, 2)) : Void
  end
end
