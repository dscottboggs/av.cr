module AV
  lib LibAVUtil
    #   AVUTIL_AUDIO_FIFO_H =
    type AVAudioFifo = Void
    fun av_audio_fifo_free(AVAudioFifo*) : Void
    fun av_audio_fifo_alloc(AVSampleFormat, LibC::Int, LibC::Int) : AVAudioFifo*
    fun av_audio_fifo_realloc(AVAudioFifo*, LibC::Int) : LibC::Int
    fun av_audio_fifo_write(AVAudioFifo*, Void**, LibC::Int) : LibC::Int
    fun av_audio_fifo_peek(AVAudioFifo*, Void**, LibC::Int) : LibC::Int
    fun av_audio_fifo_peek_at(AVAudioFifo*, Void**, LibC::Int, LibC::Int) : LibC::Int
    fun av_audio_fifo_read(AVAudioFifo*, Void**, LibC::Int) : LibC::Int
    fun av_audio_fifo_drain(AVAudioFifo*, LibC::Int) : LibC::Int
    fun av_audio_fifo_reset(AVAudioFifo*) : Void
    fun av_audio_fifo_size(AVAudioFifo*) : LibC::Int
    fun av_audio_fifo_space(AVAudioFifo*) : LibC::Int
  end
end
