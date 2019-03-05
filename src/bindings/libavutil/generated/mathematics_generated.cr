module AV
  lib LibAVUtil
    #   AVUTIL_MATHEMATICS_H =
    M_LOG2_10 = 3.32192809488736234787
    M_PHI     = 1.61803398874989484820
    enum AVRounding : LibC::UInt
      AV_ROUND_ZERO        =    0
      AV_ROUND_INF         =    1
      AV_ROUND_DOWN        =    2
      AV_ROUND_UP          =    3
      AV_ROUND_NEAR_INF    =    5
      AV_ROUND_PASS_MINMAX = 8192
    end
    fun av_gcd(Int64T, Int64T) : Int64T
    fun av_rescale(Int64T, Int64T, Int64T) : Int64T
    fun av_rescale_rnd(Int64T, Int64T, Int64T, AVRounding) : Int64T
    fun av_rescale_q(Int64T, AVRational, AVRational) : Int64T
    fun av_rescale_q_rnd(Int64T, AVRational, AVRational, AVRounding) : Int64T
    fun av_compare_ts(Int64T, AVRational, Int64T, AVRational) : LibC::Int
    fun av_compare_mod(UInt64, UInt64, UInt64) : Int64T
    fun av_rescale_delta(AVRational, Int64T, AVRational, LibC::Int, Int64T*, AVRational) : Int64T
    fun av_add_stable(AVRational, Int64T, AVRational, Int64T) : Int64T
  end
end
