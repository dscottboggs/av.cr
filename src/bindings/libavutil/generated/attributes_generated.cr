module AV
lib LibAVUtil
#   AVUTIL_ATTRIBUTES_H = 
#   AV_GCC_VERSION_AT_LEAST =  x, y)( __GNUC__>( x)|| __GNUC__==( x)&& __GNUC_MINOR__>=( y)
#   AV_GCC_VERSION_AT_MOST =  x, y)( __GNUC__<( x)|| __GNUC__==( x)&& __GNUC_MINOR__<=( y)
#   av_always_inline = __attribute__(( always_inline)) inline
    av_extern_inline = extern inline
    av_warn_unused_result = __attribute__(( warn_unused_result))
    av_noinline = __attribute__(( noinline))
    av_pure = __attribute__(( pure))
    av_const = __attribute__(( const))
#   av_cold = 
#   av_flatten = 
    attribute_deprecated = __attribute__(( deprecated))
#   AV_NOWARN_DEPRECATED = ( code) code
    av_unused = __attribute__(( unused))
    av_used = __attribute__(( used))
    av_alias = __attribute__(( may_alias))
#   av_uninit = ( x) x
    av_builtin_constant_p = __builtin_constant_p
#   av_printf_format =  fmtpos, attrpos) __attribute__(( __format__( __printf__, fmtpos, attrpos))
    av_noreturn = __attribute__(( noreturn))
end
end
