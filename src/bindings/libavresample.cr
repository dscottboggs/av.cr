require "./libavutil/log"
module AV
  @[Link("avresample")]
  lib LibAVResample
    #   AVRESAMPLE_AVRESAMPLE_H =
    AVRESAMPLE_MAX_CHANNELS = 32
    type AudioResampleContext = Void
    enum MixCoeffType : LibC::UInt
      Q8  = 0
      Q15 = 1
      FLT = 2
      NB  = 3
    end
    enum ResampleFilterType : LibC::UInt
      CUBIC            = 0
      BLACKMAN_NUTTALL = 1
      KAISER           = 2
    end
    enum ResampleDitherMethod : LibC::UInt
      NONE          = 0
      RECTANGULAR   = 1
      TRIANGULAR    = 2
      TRIANGULAR_HP = 3
      TRIANGULAR_NS = 4
      NB            = 5
    end
    fun version = avresample_version : LibC::UInt
    fun configuration = avresample_configuration : LibC::Char*
    fun license = avresample_license : LibC::Char*
    fun get_class = avresample_get_class : LibAVUtil::Class*
    fun alloc_context = avresample_alloc_context : AudioResampleContext*
    fun open = avresample_open(AudioResampleContext*) : LibC::Int
    fun is_open = avresample_is_open(AudioResampleContext*) : LibC::Int
    fun close = avresample_close(AudioResampleContext*) : Void
    fun free = avresample_free(AudioResampleContext**) : Void
    fun build_matrix = avresample_build_matrix(UInt64, UInt64, LibC::Double, LibC::Double, LibC::Double, LibC::Int, LibC::Double*, LibC::Int, MatrixEncoding) : LibC::Int
    fun get_matrix = avresample_get_matrix(AudioResampleContext*, LibC::Double*, LibC::Int) : LibC::Int
    fun set_matrix = avresample_set_matrix(AudioResampleContext*, LibC::Double*, LibC::Int) : LibC::Int
    fun set_channel_mapping = avresample_set_channel_mapping(AudioResampleContext*, LibC::Int*) : LibC::Int
    fun set_compensation = avresample_set_compensation(AudioResampleContext*, LibC::Int, LibC::Int) : LibC::Int
    fun get_out_samples = avresample_get_out_samples(AudioResampleContext*, LibC::Int) : LibC::Int
    fun convert = avresample_convert(AudioResampleContext*, UInt8**, LibC::Int, LibC::Int, UInt8**, LibC::Int, LibC::Int) : LibC::Int
    fun get_delay = avresample_get_delay(AudioResampleContext*) : LibC::Int
    fun available = avresample_available(AudioResampleContext*) : LibC::Int
    fun read = avresample_read(AudioResampleContext*, UInt8**, LibC::Int) : LibC::Int
    fun convert_frame = avresample_convert_frame(AudioResampleContext*, LibAVUtil::Frame*, LibAVUtil::Frame*) : LibC::Int
    fun config = avresample_config(AudioResampleContext*, LibAVUtil::Frame*, LibAVUtil::Frame*) : LibC::Int
  end
end
