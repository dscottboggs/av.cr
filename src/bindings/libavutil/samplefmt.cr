module AV
  lib LibAVUtil
    enum SampleFormat : LibC::Int
      NONE = -1
      U8   =  0
      S16  =  1
      S32  =  2
      FLT  =  3
      DBL  =  4
      U8P  =  5
      S16P =  6
      S32P =  7
      FLTP =  8
      DBLP =  9
      S64  = 10
      S64P = 11
      NB   = 12
    end
    fun get_sample_fmt_name = av_get_sample_fmt_name(SampleFormat) : LibC::Char*
    fun get_sample_fmt = av_get_sample_fmt(LibC::Char*) : SampleFormat
    fun get_alt_sample_fmt = av_get_alt_sample_fmt(SampleFormat, LibC::Int) : SampleFormat
    fun get_packed_sample_fmt = av_get_packed_sample_fmt(SampleFormat) : SampleFormat
    fun get_planar_sample_fmt = av_get_planar_sample_fmt(SampleFormat) : SampleFormat
    fun get_sample_fmt_string = av_get_sample_fmt_string(LibC::Char*, LibC::Int, SampleFormat) : LibC::Char*
    fun get_bytes_per_sample = av_get_bytes_per_sample(SampleFormat) : LibC::Int
    fun sample_fmt_is_planar = av_sample_fmt_is_planar(SampleFormat) : LibC::Int
    fun samples_get_buffer_size = av_samples_get_buffer_size(LibC::Int*, LibC::Int, LibC::Int, SampleFormat, LibC::Int) : LibC::Int
    fun samples_fill_arrays = av_samples_fill_arrays(UInt8**, LibC::Int*, Uint8T*, LibC::Int, LibC::Int, SampleFormat, LibC::Int) : LibC::Int
    fun samples_alloc = av_samples_alloc(UInt8**, LibC::Int*, LibC::Int, LibC::Int, SampleFormat, LibC::Int) : LibC::Int
    fun samples_alloc_array_and_samples = av_samples_alloc_array_and_samples(UInt8***, LibC::Int*, LibC::Int, LibC::Int, SampleFormat, LibC::Int) : LibC::Int
    fun samples_copy = av_samples_copy(UInt8**, UInt8**, LibC::Int, LibC::Int, LibC::Int, LibC::Int, SampleFormat) : LibC::Int
    fun samples_set_silence = av_samples_set_silence(UInt8**, LibC::Int, LibC::Int, LibC::Int, SampleFormat) : LibC::Int
  end
end
