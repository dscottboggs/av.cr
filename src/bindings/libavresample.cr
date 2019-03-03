module AV
  lib LibAVCodec
    #   AVRESAMPLE_AVRESAMPLE_H =
    AVRESAMPLE_MAX_CHANNELS = 32
    type AVAudioResampleContext = Void
    enum AVMixCoeffType : LibC::UInt
      Q8  = 0
      Q15 = 1
      FLT = 2
      NB  = 3
    end
    enum AVResampleFilterType : LibC::UInt
      CUBIC            = 0
      BLACKMAN_NUTTALL = 1
      KAISER           = 2
    end
    enum AVResampleDitherMethod : LibC::UInt
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
    fun get_class = avresample_get_class : AVClass*
    fun alloc_context = avresample_alloc_context : AVAudioResampleContext*
    fun open = avresample_open(AVAudioResampleContext*) : LibC::Int
    fun is_open = avresample_is_open(AVAudioResampleContext*) : LibC::Int
    fun close = avresample_close(AVAudioResampleContext*) : Void
    fun free = avresample_free(AVAudioResampleContext**) : Void
    fun build_matrix = avresample_build_matrix(UInt64, UInt64, LibC::Double, LibC::Double, LibC::Double, LibC::Int, LibC::Double*, LibC::Int, AVMatrixEncoding) : LibC::Int
    fun get_matrix = avresample_get_matrix(AVAudioResampleContext*, LibC::Double*, LibC::Int) : LibC::Int
    fun set_matrix = avresample_set_matrix(AVAudioResampleContext*, LibC::Double*, LibC::Int) : LibC::Int
    fun set_channel_mapping = avresample_set_channel_mapping(AVAudioResampleContext*, LibC::Int*) : LibC::Int
    fun set_compensation = avresample_set_compensation(AVAudioResampleContext*, LibC::Int, LibC::Int) : LibC::Int
    fun get_out_samples = avresample_get_out_samples(AVAudioResampleContext*, LibC::Int) : LibC::Int
    fun convert = avresample_convert(AVAudioResampleContext*, UInt8**, LibC::Int, LibC::Int, UInt8**, LibC::Int, LibC::Int) : LibC::Int
    fun get_delay = avresample_get_delay(AVAudioResampleContext*) : LibC::Int
    fun available = avresample_available(AVAudioResampleContext*) : LibC::Int
    fun read = avresample_read(AVAudioResampleContext*, UInt8**, LibC::Int) : LibC::Int
    fun convert_frame = avresample_convert_frame(AVAudioResampleContext*, AVFrame*, AVFrame*) : LibC::Int
    fun config = avresample_config(AVAudioResampleContext*, AVFrame*, AVFrame*) : LibC::Int
  end
end
