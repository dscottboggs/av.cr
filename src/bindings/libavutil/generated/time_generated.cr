module AV
  lib LibAVUtil
    #   AVUTIL_TIME_H =
    fun av_gettime : Int64T
    fun av_gettime_relative : Int64T
    fun av_gettime_relative_is_monotonic : LibC::Int
    fun av_usleep(LibC::UInt) : LibC::Int
  end
end
