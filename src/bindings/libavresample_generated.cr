module AV
  lib LibAVCodec
    #   AVRESAMPLE_AVRESAMPLE_H =
    AVRESAMPLE_MAX_CHANNELS = 32
    type AVAudioResampleContext = Void
    enum AVMixCoeffType : LibC::UInt
      AV_MIX_COEFF_TYPE_Q8  = 0
      AV_MIX_COEFF_TYPE_Q15 = 1
      AV_MIX_COEFF_TYPE_FLT = 2
      AV_MIX_COEFF_TYPE_NB  = 3
    end
    enum AVResampleFilterType : LibC::UInt
      AV_RESAMPLE_FILTER_TYPE_CUBIC            = 0
      AV_RESAMPLE_FILTER_TYPE_BLACKMAN_NUTTALL = 1
      AV_RESAMPLE_FILTER_TYPE_KAISER           = 2
    end
    enum AVResampleDitherMethod : LibC::UInt
      AV_RESAMPLE_DITHER_NONE          = 0
      AV_RESAMPLE_DITHER_RECTANGULAR   = 1
      AV_RESAMPLE_DITHER_TRIANGULAR    = 2
      AV_RESAMPLE_DITHER_TRIANGULAR_HP = 3
      AV_RESAMPLE_DITHER_TRIANGULAR_NS = 4
      AV_RESAMPLE_DITHER_NB            = 5
    end
    fun avresample_version : LibC::UInt
    fun avresample_configuration : LibC::Char*
    fun avresample_license : LibC::Char*
    fun avresample_get_class : AVClass*
    fun avresample_alloc_context : AVAudioResampleContext*
    fun avresample_open(AVAudioResampleContext*) : LibC::Int
    fun avresample_is_open(AVAudioResampleContext*) : LibC::Int
    fun avresample_close(AVAudioResampleContext*) : Void
    fun avresample_free(AVAudioResampleContext**) : Void
    fun avresample_build_matrix(UInt64, UInt64, LibC::Double, LibC::Double, LibC::Double, LibC::Int, LibC::Double*, LibC::Int, AVMatrixEncoding) : LibC::Int
    fun avresample_get_matrix(AVAudioResampleContext*, LibC::Double*, LibC::Int) : LibC::Int
    fun avresample_set_matrix(AVAudioResampleContext*, LibC::Double*, LibC::Int) : LibC::Int
    fun avresample_set_channel_mapping(AVAudioResampleContext*, LibC::Int*) : LibC::Int
    fun avresample_set_compensation(AVAudioResampleContext*, LibC::Int, LibC::Int) : LibC::Int
    fun avresample_get_out_samples(AVAudioResampleContext*, LibC::Int) : LibC::Int
    fun avresample_convert(AVAudioResampleContext*, UInt8**, LibC::Int, LibC::Int, UInt8**, LibC::Int, LibC::Int) : LibC::Int
    fun avresample_get_delay(AVAudioResampleContext*) : LibC::Int
    fun avresample_available(AVAudioResampleContext*) : LibC::Int
    fun avresample_read(AVAudioResampleContext*, UInt8**, LibC::Int) : LibC::Int
    fun avresample_convert_frame(AVAudioResampleContext*, AVFrame*, AVFrame*) : LibC::Int
    fun avresample_config(AVAudioResampleContext*, AVFrame*, AVFrame*) : LibC::Int
  end
end
