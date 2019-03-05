module AV
  lib LibAVUtil
    AES_CTR_KEY_SIZE = 16
    AES_CTR_IV_SIZE  =  8
    type AESCTR = Void
    fun aes_ctr_alloc = av_aes_ctr_alloc : AESCTR*
    fun aes_ctr_init = av_aes_ctr_init(AESCTR*, UInt8*) : LibC::Int
    fun aes_ctr_free = av_aes_ctr_free(AESCTR*) : Void
    fun aes_ctr_crypt = av_aes_ctr_crypt(AESCTR*, UInt8*, UInt8*, LibC::Int) : Void
    fun aes_ctr_get_iv = av_aes_ctr_get_iv(AESCTR*) : UInt8*
    fun aes_ctr_set_random_iv = av_aes_ctr_set_random_iv(AESCTR*) : Void
    fun aes_ctr_set_iv = av_aes_ctr_set_iv(AESCTR*, UInt8*) : Void
    fun aes_ctr_increment_iv = av_aes_ctr_increment_iv(AESCTR*) : Void
  end
end
