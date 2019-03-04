module AV
  lib LibAVUtil
    type ThreadMessageQueue = Void
    enum ThreadMessageFlags : LibC::UInt
      AV_THREAD_MESSAGE_NONBLOCK = 1
    end
    fun thread_message_queue_alloc = av_thread_message_queue_alloc(ThreadMessageQueue**, LibC::UInt, LibC::UInt) : LibC::Int
    fun thread_message_queue_free = av_thread_message_queue_free(ThreadMessageQueue**) : Void
    fun thread_message_queue_send = av_thread_message_queue_send(ThreadMessageQueue*, Void*, LibC::UInt) : LibC::Int
    fun thread_message_queue_recv = av_thread_message_queue_recv(ThreadMessageQueue*, Void*, LibC::UInt) : LibC::Int
    fun thread_message_queue_set_err_send = av_thread_message_queue_set_err_send(ThreadMessageQueue*, LibC::Int) : Void
    fun thread_message_queue_set_err_recv = av_thread_message_queue_set_err_recv(ThreadMessageQueue*, LibC::Int) : Void
    fun thread_message_queue_set_free_func = av_thread_message_queue_set_free_func(ThreadMessageQueue*, (Void*) -> Void*) : Void
    fun thread_message_flush = av_thread_message_flush(ThreadMessageQueue*) : Void
  end
end
