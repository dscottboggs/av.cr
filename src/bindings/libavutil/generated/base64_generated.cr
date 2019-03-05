module AV
  lib LibAVUtil
    #   AVUTIL_BASE64_H =
    #   AV_BASE64_DECODE_SIZE =  x)(( x)*LongLong.new(3)/4
    #   AV_BASE64_SIZE =  x)((( x)+2)/3*4+1
    fun av_base64_decode(UInt8*, LibC::Char*, LibC::Int) : LibC::Int
    fun av_base64_encode(LibC::Char*, LibC::Int, Uint8T*, LibC::Int) : LibC::Char*
  end
end
