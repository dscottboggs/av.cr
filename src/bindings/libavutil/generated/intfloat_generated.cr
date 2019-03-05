module AV
  lib LibAVUtil
    #   AVUTIL_INTFLOAT_H =
    fun av_int2float(UInt32) : LibC::Float
    fun av_float2int(LibC::Float) : UInt32
    fun av_int2double(UInt64) : LibC::Double
    fun av_double2int(LibC::Double) : UInt64
  end
end
