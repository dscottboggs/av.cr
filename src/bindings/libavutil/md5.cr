module AV
  lib LibAVUtil
    type MD5 = Void
    fun md5_alloc = av_md5_alloc : MD5*
    fun md5_init = av_md5_init(MD5*) : Void
    fun md5_update = av_md5_update(MD5*, Uint8T*, LibC::Int) : Void
    fun md5_final = av_md5_final(MD5*, UInt8*) : Void
    fun md5_sum = av_md5_sum(UInt8*, Uint8T*, LibC::Int) : Void
  end
end
