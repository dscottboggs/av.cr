module AV
  lib LibAVUtil
    # A reference counted buffer type.
    struct Buffer
    end
    struct BufferRef
      buffer : Buffer
      data : UInt8*
      size : Int32
    end

    enum BufferFlag
      READONLY = 1<<0
    end
    type BufferCreateCBResult = Void* -> Void
    type BufferCreateCB = (Void*, UInt8*) -> BufferCreateCBResult
    fun buffer_alloc = av_buffer_alloc(Int32) : BufferRef*
    fun buffer_allocz = av_buffer_allocz(Int32) : BufferRef*
    fun buffer_create = av_buffer_create(UInt8*, LibC::Int, BufferCreateCB, Void*, BufferFlag)
    fun buffer_default_free = av_buffer_default_free(Void*, UInt8*) : Void
    fun buffer_ref = av_buffer_ref(BufferRef*) : BufferRef*
    # Free a given reference and automatically free the buffer if there are no
    # more references to it...
    fun buffer_unref = av_buffer_unref(BufferRef**) : Void
    fun buffer_is_writable = av_buffer_is_writable(BufferRef*) : LibC::Int
    # Create a writable reference from a given buffer reference, avoiding data
    # copy if possible.
    fun buffer_make_writable = av_buffer_make_writable(BufferRef**) : LibC::Int
    fun buffer_realloc = av_buffer_realloc(BufferRef**, LibC::Int) : LibC::Int

    type BufferPool = Void

    type BufferPoolInitAllocFunction = (LibC::Int) -> BufferRef*
    type BufferPoolInit2AllocFunction = (Void*, LibC::Int) -> BufferRef*
    type BufferPoolInit2FreeFunction = (Void*) -> Void
    fun buffer_pool_init = av_buffer_pool_init(LibC::Int, BufferPoolInitAllocFunction*) : BufferPool*
    fun buffer_pool_init2 = av_buffer_pool_init2(LibC::Int, BufferPoolInitAllocFunction*, BufferPoolInit2FreeFunction) : BufferPool*
    fun buffer_pool_uninit = av_buffer_pool_uninit(BufferPool**) : Void
    fun buffer_pool_get = av_buffer_pool_get(BufferPool*) : BufferRef*

  end
end
