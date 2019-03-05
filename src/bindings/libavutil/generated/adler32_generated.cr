module AV
  lib LibAVUtil
    #   AVUTIL_ADLER32_H =
    fun av_adler32_update(LibC::ULong, Uint8T*, LibC::UInt) : LibC::ULong
  end
end
