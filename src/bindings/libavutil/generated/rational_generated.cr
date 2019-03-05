module AV
  lib LibAVUtil
    #   AVUTIL_RATIONAL_H =
    struct AVRational
      num : LibC::Int
      den : LibC::Int
    end

    fun av_make_q(LibC::Int, LibC::Int) : AVRational
    fun av_cmp_q(AVRational, AVRational) : LibC::Int
    fun av_q2d(AVRational) : LibC::Double
    fun av_reduce(LibC::Int*, LibC::Int*, Int64T, Int64T, Int64T) : LibC::Int
    fun av_mul_q(AVRational, AVRational) : AVRational
    fun av_div_q(AVRational, AVRational) : AVRational
    fun av_add_q(AVRational, AVRational) : AVRational
    fun av_sub_q(AVRational, AVRational) : AVRational
    fun av_inv_q(AVRational) : AVRational
    fun av_d2q(LibC::Double, LibC::Int) : AVRational
    fun av_nearer_q(AVRational, AVRational, AVRational) : LibC::Int
    fun av_find_nearest_q_idx(AVRational, AVRational*) : LibC::Int
    fun av_q2intfloat(AVRational) : UInt32
  end
end
