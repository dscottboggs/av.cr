module AV
  lib LibAVUtil
    #   AVUTIL_LZO_H =
    AV_LZO_INPUT_DEPLETED  =  1
    AV_LZO_OUTPUT_FULL     =  2
    AV_LZO_INVALID_BACKPTR =  4
    AV_LZO_ERROR           =  8
    AV_LZO_INPUT_PADDING   =  8
    AV_LZO_OUTPUT_PADDING  = 12
    fun av_lzo1x_decode(Void*, LibC::Int*, Void*, LibC::Int*) : LibC::Int
  end
end
