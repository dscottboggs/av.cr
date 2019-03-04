module AV
  lib LibAVUtil
    fun int2float = av_int2float(UInt32) : LibC::Float
    fun float2int = av_float2int(LibC::Float) : UInt32
    fun int2double = av_int2double(UInt64) : LibC::Double
    fun double2int = av_double2int(LibC::Double) : UInt64
  end
end
