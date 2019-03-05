module AV
  lib LibAVUtil
    #   AVUTIL_SAMPLEFMT_H =
    enum AVSampleFormat : LibC::Int
      AV_SAMPLE_FMT_NONE = -1
      AV_SAMPLE_FMT_U8   =  0
      AV_SAMPLE_FMT_S16  =  1
      AV_SAMPLE_FMT_S32  =  2
      AV_SAMPLE_FMT_FLT  =  3
      AV_SAMPLE_FMT_DBL  =  4
      AV_SAMPLE_FMT_U8P  =  5
      AV_SAMPLE_FMT_S16P =  6
      AV_SAMPLE_FMT_S32P =  7
      AV_SAMPLE_FMT_FLTP =  8
      AV_SAMPLE_FMT_DBLP =  9
      AV_SAMPLE_FMT_S64  = 10
      AV_SAMPLE_FMT_S64P = 11
      AV_SAMPLE_FMT_NB   = 12
    end
    fun av_get_sample_fmt_name(AVSampleFormat) : LibC::Char*
    fun av_get_sample_fmt(LibC::Char*) : AVSampleFormat
    fun av_get_alt_sample_fmt(AVSampleFormat, LibC::Int) : AVSampleFormat
    fun av_get_packed_sample_fmt(AVSampleFormat) : AVSampleFormat
    fun av_get_planar_sample_fmt(AVSampleFormat) : AVSampleFormat
    fun av_get_sample_fmt_string(LibC::Char*, LibC::Int, AVSampleFormat) : LibC::Char*
    fun av_get_bytes_per_sample(AVSampleFormat) : LibC::Int
    fun av_sample_fmt_is_planar(AVSampleFormat) : LibC::Int
    fun av_samples_get_buffer_size(LibC::Int*, LibC::Int, LibC::Int, AVSampleFormat, LibC::Int) : LibC::Int
    fun av_samples_fill_arrays(UInt8**, LibC::Int*, Uint8T*, LibC::Int, LibC::Int, AVSampleFormat, LibC::Int) : LibC::Int
    fun av_samples_alloc(UInt8**, LibC::Int*, LibC::Int, LibC::Int, AVSampleFormat, LibC::Int) : LibC::Int
    fun av_samples_alloc_array_and_samples(UInt8***, LibC::Int*, LibC::Int, LibC::Int, AVSampleFormat, LibC::Int) : LibC::Int
    fun av_samples_copy(UInt8**, UInt8**, LibC::Int, LibC::Int, LibC::Int, LibC::Int, AVSampleFormat) : LibC::Int
    fun av_samples_set_silence(UInt8**, LibC::Int, LibC::Int, LibC::Int, AVSampleFormat) : LibC::Int
  end
end
