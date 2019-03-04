module AV
  lib LibAVUtil
    #   AVUTIL_LZO_H =
    LZO_INPUT_DEPLETED  =  1
    LZO_OUTPUT_FULL     =  2
    LZO_INVALID_BACKPTR =  4
    LZO_ERROR           =  8
    LZO_INPUT_PADDING   =  8
    LZO_OUTPUT_PADDING  = 12
    fun lzo1x_decode = av_lzo1x_decode(Void*, LibC::Int*, Void*, LibC::Int*) : LibC::Int
  end
end
