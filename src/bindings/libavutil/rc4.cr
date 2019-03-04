module AV
  lib LibAVUtil
    #   AVUTIL_RC4_H =
    struct RC4
      state : StaticArray(UInt8, 256)
      x : LibC::Int
      y : LibC::Int
    end

    fun rc4_alloc = av_rc4_alloc : RC4*
    fun rc4_init = av_rc4_init(RC4*, Uint8T*, LibC::Int, LibC::Int) : LibC::Int
    fun rc4_crypt = av_rc4_crypt(RC4*, UInt8*, Uint8T*, LibC::Int, UInt8*, LibC::Int) : Void
  end
end
