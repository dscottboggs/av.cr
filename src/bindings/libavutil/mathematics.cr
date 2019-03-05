module AV
  lib LibAVUtil
    #   AVUTIL_MATHEMATICS_H =
    M_LOG2_10 = 3.32192809488736234787
    M_PHI     = 1.61803398874989484820
    enum Rounding : LibC::UInt
      ZERO        =    0
      INF         =    1
      DOWN        =    2
      UP          =    3
      NEAR_INF    =    5
      PASS_MINMAX = 8192
    end
    fun gcd = av_gcd(Int64, Int64) : Int64
    fun rescale = av_rescale(Int64, Int64, Int64) : Int64
    fun rescale_rnd = av_rescale_rnd(Int64, Int64, Int64, Rounding) : Int64
    fun rescale_q = av_rescale_q(Int64, Rational, Rational) : Int64
    fun rescale_q_rnd = av_rescale_q_rnd(Int64, Rational, Rational, Rounding) : Int64
    fun compare_ts = av_compare_ts(Int64, Rational, Int64, Rational) : LibC::Int
    fun compare_mod = av_compare_mod(UInt64, UInt64, UInt64) : Int64
    fun rescale_delta = av_rescale_delta(Rational, Int64, Rational, LibC::Int, Int64*, Rational) : Int64
    fun add_stable = av_add_stable(Rational, Int64, Rational, Int64) : Int64
  end
end
