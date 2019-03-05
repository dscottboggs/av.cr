module AV
  lib LibAVUtil
    #   AVUTIL_CAMELLIA_H =
    type AVCAMELLIA = Void
    fun av_camellia_alloc : AVCAMELLIA*
    fun av_camellia_init(AVCAMELLIA*, Uint8T*, LibC::Int) : LibC::Int
    fun av_camellia_crypt(AVCAMELLIA*, UInt8*, Uint8T*, LibC::Int, UInt8*, LibC::Int) : Void
  end
end
