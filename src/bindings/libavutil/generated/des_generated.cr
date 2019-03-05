module AV
  lib LibAVUtil
    #   AVUTIL_DES_H =
    struct AVDES
      round_keys : StaticArray(StaticArray(UInt64, 16), 3)
      triple_des : LibC::Int
    end

    fun av_des_alloc : AVDES*
    fun av_des_init(AVDES*, Uint8T*, LibC::Int, LibC::Int) : LibC::Int
    fun av_des_crypt(AVDES*, UInt8*, Uint8T*, LibC::Int, UInt8*, LibC::Int) : Void
    fun av_des_mac(AVDES*, UInt8*, Uint8T*, LibC::Int) : Void
  end
end
