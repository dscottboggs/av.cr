module AV
  lib LibAVUtil
    #   AVUTIL_BLOWFISH_H =
    AV_BF_ROUNDS = 16

    struct AVBlowfish
      p : StaticArray(UInt32, 18)
      s : StaticArray(StaticArray(UInt32, 256), 4)
    end

    fun av_blowfish_alloc : AVBlowfish*
    fun av_blowfish_init(AVBlowfish*, Uint8T*, LibC::Int) : Void
    fun av_blowfish_crypt_ecb(AVBlowfish*, UInt32*, UInt32*, LibC::Int) : Void
    fun av_blowfish_crypt(AVBlowfish*, UInt8*, Uint8T*, LibC::Int, UInt8*, LibC::Int) : Void
  end
end
