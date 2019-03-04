module AV
  lib LibAVUtil
    #   AVUTIL_RC4_H =
    struct AVRC4
      state : StaticArray(UInt8, 256)
      x : LibC::Int
      y : LibC::Int
    end

    fun av_rc4_alloc : AVRC4*
    fun av_rc4_init(AVRC4*, Uint8T*, LibC::Int, LibC::Int) : LibC::Int
    fun av_rc4_crypt(AVRC4*, UInt8*, Uint8T*, LibC::Int, UInt8*, LibC::Int) : Void
  end
end
