module AV
  lib LibAVUtil
    struct FifoBuffer
      buffer : UInt8*
      rptr : UInt8*
      wptr : UInt8*
      _end : UInt8*
      rndx : UInt32
      wndx : UInt32
    end

    type FifoPeekCB = (Void*, Void*, LibC::Int) -> Void*
    type FifoReadCB = FifoPeekCB
    type FifoWriteCB = (Void*, Void*, LibC::Int) -> LibC::Int*

    fun fifo_alloc = av_fifo_alloc(LibC::UInt) : FifoBuffer*
    fun fifo_alloc_array = av_fifo_alloc_array(SizeT, SizeT) : FifoBuffer*
    fun fifo_free = av_fifo_free(FifoBuffer*) : Void
    fun fifo_freep = av_fifo_freep(FifoBuffer**) : Void
    fun fifo_reset = av_fifo_reset(FifoBuffer*) : Void
    fun fifo_size = av_fifo_size(FifoBuffer*) : LibC::Int
    fun fifo_space = av_fifo_space(FifoBuffer*) : LibC::Int
    fun fifo_generic_peek_at = av_fifo_generic_peek_at(FifoBuffer*, Void*, LibC::Int, LibC::Int, FifoPeekCB) : LibC::Int
    fun fifo_generic_peek = av_fifo_generic_peek(FifoBuffer*, Void*, LibC::Int, FifoPeekCB) : LibC::Int
    fun fifo_generic_read = av_fifo_generic_read(FifoBuffer*, Void*, LibC::Int, FifoReadCB) : LibC::Int
    fun fifo_generic_write = av_fifo_generic_write(FifoBuffer*, Void*, LibC::Int, FifoWriteCB) : LibC::Int
    fun fifo_realloc2 = av_fifo_realloc2(FifoBuffer*, LibC::UInt) : LibC::Int
    fun fifo_grow = av_fifo_grow(FifoBuffer*, LibC::UInt) : LibC::Int
    fun fifo_drain = av_fifo_drain(FifoBuffer*, LibC::Int) : Void
    fun fifo_peek2 = av_fifo_peek2(FifoBuffer*, LibC::Int) : UInt8*
  end
end
