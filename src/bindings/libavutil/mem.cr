module AV
lib LibAVUtil
#   AVUTIL_MEM_H =
#   DECLARE_ALIGNED = ( n, t, v) t __attribute__(( aligned( n))) v
#   DECLARE_ASM_CONST = ( n, t, v) static const t av_used __attribute__(( aligned( n))) v
    # av_malloc_attrib = __attribute__(( __malloc__))
#   av_alloc_size = ...
  fun malloc = av_malloc(SizeT) : Void*
  fun mallocz = av_mallocz(SizeT) : Void*
  fun malloc_array = av_malloc_array(SizeT, SizeT) : Void*
  fun mallocz_array = av_mallocz_array(SizeT, SizeT) : Void*
  fun calloc = av_calloc(SizeT, SizeT) : Void*
  fun realloc = av_realloc(Void*, SizeT) : Void*
  fun reallocp = av_reallocp(Void*, SizeT) : LibC::Int
  fun realloc_f = av_realloc_f(Void*, SizeT, SizeT) : Void*
  fun realloc_array = av_realloc_array(Void*, SizeT, SizeT) : Void*
  fun reallocp_array = av_reallocp_array(Void*, SizeT, SizeT) : LibC::Int
  fun fast_realloc = av_fast_realloc(Void*, LibC::UInt*, SizeT) : Void*
  fun fast_malloc = av_fast_malloc(Void*, LibC::UInt*, SizeT) : Void
  fun fast_mallocz = av_fast_mallocz(Void*, LibC::UInt*, SizeT) : Void
  fun free = av_free(Void*) : Void
  fun freep = av_freep(Void*) : Void
  fun strdup = av_strdup(LibC::Char*) : LibC::Char*
  fun strndup = av_strndup(LibC::Char*, SizeT) : LibC::Char*
  fun memdup = av_memdup(Void*, SizeT) : Void*
  fun memcpy_backptr = av_memcpy_backptr(UInt8*, LibC::Int, LibC::Int) : Void
  fun dynarray_add = av_dynarray_add(Void*, LibC::Int*, Void*) : Void
  fun dynarray_add_nofree = av_dynarray_add_nofree(Void*, LibC::Int*, Void*) : LibC::Int
  fun dynarray2_add = av_dynarray2_add(Void**, LibC::Int*, SizeT, UInt8*) : Void*
  fun size_mult = av_size_mult(SizeT, SizeT, SizeT*) : LibC::Int
  fun max_alloc = av_max_alloc(SizeT) : Void
end
end
