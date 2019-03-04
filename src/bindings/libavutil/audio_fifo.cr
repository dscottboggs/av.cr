require "./samplefmt"
module AV
  lib LibAVUtil
    type AudioFifo = Void
    fun audio_fifo_free = av_audio_fifo_free(AudioFifo*) : Void
    fun audio_fifo_alloc = av_audio_fifo_alloc(SampleFormat, LibC::Int, LibC::Int) : AudioFifo*
    fun audio_fifo_realloc = av_audio_fifo_realloc(AudioFifo*, LibC::Int) : LibC::Int
    fun audio_fifo_write = av_audio_fifo_write(AudioFifo*, Void**, LibC::Int) : LibC::Int
    fun audio_fifo_peek = av_audio_fifo_peek(AudioFifo*, Void**, LibC::Int) : LibC::Int
    fun audio_fifo_peek_at = av_audio_fifo_peek_at(AudioFifo*, Void**, LibC::Int, LibC::Int) : LibC::Int
    fun audio_fifo_read = av_audio_fifo_read(AudioFifo*, Void**, LibC::Int) : LibC::Int
    fun audio_fifo_drain = av_audio_fifo_drain(AudioFifo*, LibC::Int) : LibC::Int
    fun audio_fifo_reset = av_audio_fifo_reset(AudioFifo*) : Void
    fun audio_fifo_size = av_audio_fifo_size(AudioFifo*) : LibC::Int
    fun audio_fifo_space = av_audio_fifo_space(AudioFifo*) : LibC::Int
  end
end
