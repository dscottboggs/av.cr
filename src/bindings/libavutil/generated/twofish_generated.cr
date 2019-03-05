module AV
  lib LibAVUtil
    #   AVUTIL_TWOFISH_H =
    type AVTWOFISH = Void
    fun av_twofish_alloc : AVTWOFISH*
    fun av_twofish_init(AVTWOFISH*, Uint8T*, LibC::Int) : LibC::Int
    fun av_twofish_crypt(AVTWOFISH*, UInt8*, Uint8T*, LibC::Int, UInt8*, LibC::Int) : Void
  end
end
