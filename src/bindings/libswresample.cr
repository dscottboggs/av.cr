require "./libavutil/log"
module AV
  lib LibSWResample
    #   SWRESAMPLE_SWRESAMPLE_H =
    SWR_FLAG_RESAMPLE = 1
    enum SwrDitherType : LibC::UInt
      NONE                   =  0
      RECTANGULAR            =  1
      TRIANGULAR             =  2
      TRIANGULAR_HIGHPASS    =  3
      NS                     = 64
      NS_LIPSHITZ            = 65
      NS_F_WEIGHTED          = 66
      NS_MODIFIED_E_WEIGHTED = 67
      NS_IMPROVED_E_WEIGHTED = 68
      NS_SHIBATA             = 69
      NS_LOW_SHIBATA         = 70
      NS_HIGH_SHIBATA        = 71
      NB                     = 72
    end
    enum SwrEngine : LibC::UInt
      SWR  = 0
      SOXR = 1
      NB   = 2
    end
    enum SwrFilterType : LibC::UInt
      CUBIC            = 0
      BLACKMAN_NUTTALL = 1
      KAISER           = 2
    end
    type SwrContext = Void
    fun get_class = swr_get_class : LibAVUtil::Class*
    fun alloc = swr_alloc : SwrContext*
    fun init = swr_init(SwrContext*) : LibC::Int
    fun is_initialized = swr_is_initialized(SwrContext*) : LibC::Int
    fun alloc_set_opts = swr_alloc_set_opts(SwrContext*, Int64T, SampleFormat, LibC::Int, Int64T, SampleFormat, LibC::Int, LibC::Int, Void*) : SwrContext*
    fun free = swr_free(SwrContext**) : Void
    fun close = swr_close(SwrContext*) : Void
    fun convert = swr_convert(SwrContext*, UInt8**, LibC::Int, Uint8T**, LibC::Int) : LibC::Int
    fun next_pts = swr_next_pts(SwrContext*, Int64T) : Int64T
    fun set_compensation = swr_set_compensation(SwrContext*, LibC::Int, LibC::Int) : LibC::Int
    fun set_channel_mapping = swr_set_channel_mapping(SwrContext*, LibC::Int*) : LibC::Int
    fun build_matrix = swr_build_matrix(UInt64, UInt64, LibC::Double, LibC::Double, LibC::Double, LibC::Double, LibC::Double, LibC::Double*, LibC::Int, AVMatrixEncoding, Void*) : LibC::Int
    fun set_matrix = swr_set_matrix(SwrContext*, LibC::Double*, LibC::Int) : LibC::Int
    fun drop_output = swr_drop_output(SwrContext*, LibC::Int) : LibC::Int
    fun inject_silence = swr_inject_silence(SwrContext*, LibC::Int) : LibC::Int
    fun get_delay = swr_get_delay(SwrContext*, Int64T) : Int64T
    fun get_out_samples = swr_get_out_samples(SwrContext*, LibC::Int) : LibC::Int
    fun swresample_version : LibC::UInt
    fun swresample_configuration : LibC::Char*
    fun swresample_license : LibC::Char*
    fun convert_frame = swr_convert_frame(SwrContext*, AVFrame*, AVFrame*) : LibC::Int
    fun config_frame = swr_config_frame(SwrContext*, AVFrame*, AVFrame*) : LibC::Int
  end
end
