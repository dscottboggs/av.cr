module AV
lib LibAVUtil
#   AVUTIL_MEM_H = 
#   DECLARE_ALIGNED = ( n, t, v) t __attribute__(( aligned( n))) v
#   DECLARE_ASM_CONST = ( n, t, v) static const t av_used __attribute__(( aligned( n))) v
    av_malloc_attrib = __attribute__(( __malloc__))
#   av_alloc_size = ...
  fun av_malloc(SizeT) : Void*
  fun av_mallocz(SizeT) : Void*
  fun av_malloc_array(SizeT, SizeT) : Void*
  fun av_mallocz_array(SizeT, SizeT) : Void*
  fun av_calloc(SizeT, SizeT) : Void*
  fun av_realloc(Void*, SizeT) : Void*
  fun av_reallocp(Void*, SizeT) : LibC::Int
  fun av_realloc_f(Void*, SizeT, SizeT) : Void*
  fun av_realloc_array(Void*, SizeT, SizeT) : Void*
  fun av_reallocp_array(Void*, SizeT, SizeT) : LibC::Int
  fun av_fast_realloc(Void*, LibC::UInt*, SizeT) : Void*
  fun av_fast_malloc(Void*, LibC::UInt*, SizeT) : Void
  fun av_fast_mallocz(Void*, LibC::UInt*, SizeT) : Void
  fun av_free(Void*) : Void
  fun av_freep(Void*) : Void
  fun av_strdup(LibC::Char*) : LibC::Char*
  fun av_strndup(LibC::Char*, SizeT) : LibC::Char*
  fun av_memdup(Void*, SizeT) : Void*
  fun av_memcpy_backptr(UInt8*, LibC::Int, LibC::Int) : Void
  fun av_dynarray_add(Void*, LibC::Int*, Void*) : Void
  fun av_dynarray_add_nofree(Void*, LibC::Int*, Void*) : LibC::Int
  fun av_dynarray2_add(Void**, LibC::Int*, SizeT, Uint8T*) : Void*
  fun av_size_mult(SizeT, SizeT, SizeT*) : LibC::Int
  fun av_max_alloc(SizeT) : Void
end
end
