module AV
  lib LibAVUtil
    #   AVUTIL_AES_CTR_H =
    AES_CTR_KEY_SIZE = 16
    AES_CTR_IV_SIZE  =  8
    type AVAESCTR = Void
    fun av_aes_ctr_alloc : AVAESCTR*
    fun av_aes_ctr_init(AVAESCTR*, Uint8T*) : LibC::Int
    fun av_aes_ctr_free(AVAESCTR*) : Void
    fun av_aes_ctr_crypt(AVAESCTR*, UInt8*, Uint8T*, LibC::Int) : Void
    fun av_aes_ctr_get_iv(AVAESCTR*) : Uint8T*
    fun av_aes_ctr_set_random_iv(AVAESCTR*) : Void
    fun av_aes_ctr_set_iv(AVAESCTR*, Uint8T*) : Void
    fun av_aes_ctr_increment_iv(AVAESCTR*) : Void
  end
end
