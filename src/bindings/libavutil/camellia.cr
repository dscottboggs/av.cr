module AV
  lib LibAVUtil
    type Camellia = Void
    fun camellia_alloc = av_camellia_alloc : Camellia*
    fun camellia_init = av_camellia_init(Camellia*, UInt8*, LibC::Int) : LibC::Int
    fun camellia_crypt = av_camellia_crypt(Camellia*, UInt8*, UInt8*, LibC::Int, UInt8*, LibC::Int) : Void
  end
end
