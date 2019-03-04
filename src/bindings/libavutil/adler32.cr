module AV
  lib LibAVUtil
    fun adler32_update = av_adler32_update(LibC::ULong, UInt8*, LibC::UInt) : LibC::ULong
  end
end
