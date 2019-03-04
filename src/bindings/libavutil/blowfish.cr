module AV
  lib LibAVUtil
    AV_BF_ROUNDS = 16

    struct Blowfish
      p : StaticArray(UInt32, 18)
      s : StaticArray(StaticArray(UInt32, 256), 4)
    end

    fun blowfish_alloc = av_blowfish_alloc : Blowfish*
    fun blowfish_init = av_blowfish_init(Blowfish*, Uint8T*, LibC::Int) : Void
    fun blowfish_crypt_ecb = av_blowfish_crypt_ecb(Blowfish*, UInt32*, UInt32*, LibC::Int) : Void
    fun blowfish_crypt = av_blowfish_crypt(Blowfish*, UInt8*, Uint8T*, LibC::Int, UInt8*, LibC::Int) : Void
  end
end
