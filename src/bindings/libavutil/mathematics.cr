module AV
  lib LibAVUtil
    #   AVUTIL_MATHEMATICS_H =
    M_LOG2_10 = 3.32192809488736234787
    M_PHI     = 1.61803398874989484820
    enum AVRounding : LibC::UInt
      ZERO        =    0
      INF         =    1
      DOWN        =    2
      UP          =    3
      NEAR_INF    =    5
      PASS_MINMAX = 8192
    end
    fun gcd = av_gcd(Int64T, Int64T) : Int64T
    fun rescale = av_rescale(Int64T, Int64T, Int64T) : Int64T
    fun rescale_rnd = av_rescale_rnd(Int64T, Int64T, Int64T, AVRounding) : Int64T
    fun rescale_q = av_rescale_q(Int64T, AVRational, AVRational) : Int64T
    fun rescale_q_rnd = av_rescale_q_rnd(Int64T, AVRational, AVRational, AVRounding) : Int64T
    fun compare_ts = av_compare_ts(Int64T, AVRational, Int64T, AVRational) : LibC::Int
    fun compare_mod = av_compare_mod(UInt64, UInt64, UInt64) : Int64T
    fun rescale_delta = av_rescale_delta(AVRational, Int64T, AVRational, LibC::Int, Int64T*, AVRational) : Int64T
    fun add_stable = av_add_stable(AVRational, Int64T, AVRational, Int64T) : Int64T
  end
end
