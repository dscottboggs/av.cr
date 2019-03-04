module AV
  lib LibAVUtil
    struct DES
      round_keys : StaticArray(StaticArray(UInt64, 16), 3)
      triple_des : LibC::Int
    end

    fun des_alloc = av_des_alloc : DES*
    fun des_init = av_des_init(DES*, Uint8T*, LibC::Int, LibC::Int) : LibC::Int
    fun des_crypt = av_des_crypt(DES*, UInt8*, Uint8T*, LibC::Int, UInt8*, LibC::Int) : Void
    fun des_mac = av_des_mac(DES*, UInt8*, Uint8T*, LibC::Int) : Void
  end
end
