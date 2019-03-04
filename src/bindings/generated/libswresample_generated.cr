module AV
  lib LibSWResample
    #   SWRESAMPLE_SWRESAMPLE_H =
    SWR_FLAG_RESAMPLE = 1
    enum SwrDitherType : LibC::UInt
      SWR_DITHER_NONE                   =  0
      SWR_DITHER_RECTANGULAR            =  1
      SWR_DITHER_TRIANGULAR             =  2
      SWR_DITHER_TRIANGULAR_HIGHPASS    =  3
      SWR_DITHER_NS                     = 64
      SWR_DITHER_NS_LIPSHITZ            = 65
      SWR_DITHER_NS_F_WEIGHTED          = 66
      SWR_DITHER_NS_MODIFIED_E_WEIGHTED = 67
      SWR_DITHER_NS_IMPROVED_E_WEIGHTED = 68
      SWR_DITHER_NS_SHIBATA             = 69
      SWR_DITHER_NS_LOW_SHIBATA         = 70
      SWR_DITHER_NS_HIGH_SHIBATA        = 71
      SWR_DITHER_NB                     = 72
    end
    enum SwrEngine : LibC::UInt
      SWR_ENGINE_SWR  = 0
      SWR_ENGINE_SOXR = 1
      SWR_ENGINE_NB   = 2
    end
    enum SwrFilterType : LibC::UInt
      SWR_FILTER_TYPE_CUBIC            = 0
      SWR_FILTER_TYPE_BLACKMAN_NUTTALL = 1
      SWR_FILTER_TYPE_KAISER           = 2
    end
    type SwrContext = Void
    fun swr_get_class : AVClass*
    fun swr_alloc : SwrContext*
    fun swr_init(SwrContext*) : LibC::Int
    fun swr_is_initialized(SwrContext*) : LibC::Int
    fun swr_alloc_set_opts(SwrContext*, Int64T, SampleFormat, LibC::Int, Int64T, SampleFormat, LibC::Int, LibC::Int, Void*) : SwrContext*
    fun swr_free(SwrContext**) : Void
    fun swr_close(SwrContext*) : Void
    fun swr_convert(SwrContext*, UInt8**, LibC::Int, Uint8T**, LibC::Int) : LibC::Int
    fun swr_next_pts(SwrContext*, Int64T) : Int64T
    fun swr_set_compensation(SwrContext*, LibC::Int, LibC::Int) : LibC::Int
    fun swr_set_channel_mapping(SwrContext*, LibC::Int*) : LibC::Int
    fun swr_build_matrix(UInt64, UInt64, LibC::Double, LibC::Double, LibC::Double, LibC::Double, LibC::Double, LibC::Double*, LibC::Int, AVMatrixEncoding, Void*) : LibC::Int
    fun swr_set_matrix(SwrContext*, LibC::Double*, LibC::Int) : LibC::Int
    fun swr_drop_output(SwrContext*, LibC::Int) : LibC::Int
    fun swr_inject_silence(SwrContext*, LibC::Int) : LibC::Int
    fun swr_get_delay(SwrContext*, Int64T) : Int64T
    fun swr_get_out_samples(SwrContext*, LibC::Int) : LibC::Int
    fun swresample_version : LibC::UInt
    fun swresample_configuration : LibC::Char*
    fun swresample_license : LibC::Char*
    fun swr_convert_frame(SwrContext*, AVFrame*, AVFrame*) : LibC::Int
    fun swr_config_frame(SwrContext*, AVFrame*, AVFrame*) : LibC::Int
  end
end
