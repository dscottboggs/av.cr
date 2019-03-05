module AV
  lib LibAVUtil
    #   AVUTIL_THREADMESSAGE_H =
    type AVThreadMessageQueue = Void
    enum AVThreadMessageFlags : LibC::UInt
      AV_THREAD_MESSAGE_NONBLOCK = 1
    end
    fun av_thread_message_queue_alloc(AVThreadMessageQueue**, LibC::UInt, LibC::UInt) : LibC::Int
    fun av_thread_message_queue_free(AVThreadMessageQueue**) : Void
    fun av_thread_message_queue_send(AVThreadMessageQueue*, Void*, LibC::UInt) : LibC::Int
    fun av_thread_message_queue_recv(AVThreadMessageQueue*, Void*, LibC::UInt) : LibC::Int
    fun av_thread_message_queue_set_err_send(AVThreadMessageQueue*, LibC::Int) : Void
    fun av_thread_message_queue_set_err_recv(AVThreadMessageQueue*, LibC::Int) : Void
    fun av_thread_message_queue_set_free_func(AVThreadMessageQueue*, (Void*) -> Void*) : Void
    fun av_thread_message_flush(AVThreadMessageQueue*) : Void
  end
end
