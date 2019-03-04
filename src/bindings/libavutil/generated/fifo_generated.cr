module AV
lib LibAVUtil
#   AVUTIL_FIFO_H = 
  struct AVFifoBuffer
    buffer : UInt8*
    rptr : UInt8*
    wptr : UInt8*
    end : UInt8*
    rndx : UInt32
    wndx : UInt32
  end

  fun av_fifo_alloc(LibC::UInt) : AVFifoBuffer*
  fun av_fifo_alloc_array(SizeT, SizeT) : AVFifoBuffer*
  fun av_fifo_free(AVFifoBuffer*) : Void
  fun av_fifo_freep(AVFifoBuffer**) : Void
  fun av_fifo_reset(AVFifoBuffer*) : Void
  fun av_fifo_size(AVFifoBuffer*) : LibC::Int
  fun av_fifo_space(AVFifoBuffer*) : LibC::Int
  fun av_fifo_generic_peek_at(AVFifoBuffer*, Void*, LibC::Int, LibC::Int, (Void*, Void*, LibC::Int) -> Void*) : LibC::Int
  fun av_fifo_generic_peek(AVFifoBuffer*, Void*, LibC::Int, (Void*, Void*, LibC::Int) -> Void*) : LibC::Int
  fun av_fifo_generic_read(AVFifoBuffer*, Void*, LibC::Int, (Void*, Void*, LibC::Int) -> Void*) : LibC::Int
  fun av_fifo_generic_write(AVFifoBuffer*, Void*, LibC::Int, (Void*, Void*, LibC::Int) -> LibC::Int*) : LibC::Int
  fun av_fifo_realloc2(AVFifoBuffer*, LibC::UInt) : LibC::Int
  fun av_fifo_grow(AVFifoBuffer*, LibC::UInt) : LibC::Int
  fun av_fifo_drain(AVFifoBuffer*, LibC::Int) : Void
  fun av_fifo_peek2(AVFifoBuffer*, LibC::Int) : UInt8*
end
end
