module AV
  lib LibAVUtil
    #   AVUTIL_CAST5_H =
    type AVCAST5 = Void
    fun av_cast5_alloc : AVCAST5*
    fun av_cast5_init(AVCAST5*, Uint8T*, LibC::Int) : LibC::Int
    fun av_cast5_crypt(AVCAST5*, UInt8*, Uint8T*, LibC::Int, LibC::Int) : Void
    fun av_cast5_crypt2(AVCAST5*, UInt8*, Uint8T*, LibC::Int, UInt8*, LibC::Int) : Void
  end
end
