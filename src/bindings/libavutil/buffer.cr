module AV
  lib LibAVUtil
    type Buffer = Void
    struct BufferRef
      buffer : Buffer
      data : UInt8*
      size : Int32
    end

    enum BufferFlag
      READONLY = 1<<0
    end
    type BufferCreateCBResult = Void* -> Void
    type BufferCreateCB = (opaque : Void*, data : UInt8*) -> BufferCreateCBResult
    fun buffer_alloc = av_buffer_alloc(size : Int32) : BufferRef*
    fun buffer_allocz = av_buffer_allocz(size : Int32) : BufferRef*
    fun buffer_create = av_buffer_create(data : UInt8*, size : LibC::Int, BufferCreateCB, opaque : Void*, flags : BufferFlag)
  end
end
