module AV
  lib LibAVUtil
    fun base64_decode = av_base64_decode(UInt8*, LibC::Char*, LibC::Int) : LibC::Int
    fun base64_encode = av_base64_encode(LibC::Char*, LibC::Int, Uint8T*, LibC::Int) : LibC::Char*
  end
end
