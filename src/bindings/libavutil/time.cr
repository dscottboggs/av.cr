module AV
  lib LibAVUtil
    #   AVUTIL_TIME_H =
    fun gettime = av_gettime : Int64
    fun gettime_relative = av_gettime_relative : Int64
    fun gettime_relative_is_monotonic = av_gettime_relative_is_monotonic : LibC::Int
    fun usleep = av_usleep(LibC::UInt) : LibC::Int
  end
end
