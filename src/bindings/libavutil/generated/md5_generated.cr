module AV
  lib LibAVUtil
    #   AVUTIL_MD5_H =
    type AVMD5 = Void
    fun av_md5_alloc : AVMD5*
    fun av_md5_init(AVMD5*) : Void
    fun av_md5_update(AVMD5*, Uint8T*, LibC::Int) : Void
    fun av_md5_final(AVMD5*, UInt8*) : Void
    fun av_md5_sum(UInt8*, Uint8T*, LibC::Int) : Void
  end
end
