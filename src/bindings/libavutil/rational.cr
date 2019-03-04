module AV
  lib LibAVUtil
    struct Rational
      num : LibC::Int
      den : LibC::Int
    end

    fun make_q = av_make_q(LibC::Int, LibC::Int) : Rational
    fun cmp_q = av_cmp_q(Rational, Rational) : LibC::Int
    fun q2d = av_q2d(Rational) : LibC::Double
    fun reduce = av_reduce(LibC::Int*, LibC::Int*, Int64T, Int64T, Int64T) : LibC::Int
    fun mul_q = av_mul_q(Rational, Rational) : Rational
    fun div_q = av_div_q(Rational, Rational) : Rational
    fun add_q = av_add_q(Rational, Rational) : Rational
    fun sub_q = av_sub_q(Rational, Rational) : Rational
    fun inv_q = av_inv_q(Rational) : Rational
    fun d2q = av_d2q(LibC::Double, LibC::Int) : Rational
    fun nearer_q = av_nearer_q(Rational, Rational, Rational) : LibC::Int
    fun find_nearest_q_idx = av_find_nearest_q_idx(Rational, Rational*) : LibC::Int
    fun q2intfloat = av_q2intfloat(Rational) : UInt32
  end
end
