module AV
  lib LibAVUtil
    type AES = Void
    fun aes_alloc = av_aes_alloc : AES*
    fun aes_init = av_aes_init(AES*, UInt8*, LibC::Int, LibC::Int) : LibC::Int
    fun aes_crypt = av_aes_crypt(AES*, UInt8*, UInt8*, LibC::Int, UInt8*, LibC::Int) : Void
  end
end
