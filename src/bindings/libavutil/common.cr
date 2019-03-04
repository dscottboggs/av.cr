module AV
  lib LibAVUtil
    # NOTE: this file contains macros which have not been translated, and may be
    # incomplete!

    HAVE_FLOAT16            = 0o0
    HAVE_FLOAT32            =   1
    HAVE_FLOAT64            =   1
    HAVE_FLOAT32X           =   1
    HAVE_FLOAT128X          = 0o0
    HAVE_DISTINCT_FLOAT16   = HAVE_FLOAT16
    HAVE_DISTINCT_FLOAT32   = 0o0
    HAVE_DISTINCT_FLOAT64   = 0o0
    HAVE_DISTINCT_FLOAT32X  = 0o0
    HAVE_DISTINCT_FLOAT64X  = 0o0
    HAVE_DISTINCT_FLOAT128X = HAVE_FLOAT128X
    HAVE_FLOATN_NOT_TYPEDEF = 0o0
    #   f32 = ( x) x## f
    #   f64 = ( x) x
    #   f32x = ( x) x
    #   f64x = ( x) x## l
    # CFLOAT32 = _Complex float
    # CFLOAT64 = _Complex double
    # CFLOAT32X = _Complex double
    # CFLOAT64X = _Complex long double
    #   builtin_huge_valf32 = )( __builtin_huge_valf()
    #   builtin_inff32 = )( __builtin_inff()
    #   builtin_nanf32 =  x)( __builtin_nanf( x)
    #   builtin_nansf32 =  x)( __builtin_nansf( x)
    #   builtin_huge_valf64 = )( __builtin_huge_val()
    #   builtin_inff64 = )( __builtin_inf()
    #   builtin_nanf64 =  x)( __builtin_nan( x)
    #   builtin_nansf64 =  x)( __builtin_nans( x)
    #   builtin_huge_valf32x = )( __builtin_huge_val()
    #   builtin_inff32x = )( __builtin_inf()
    #   builtin_nanf32x =  x)( __builtin_nan( x)
    #   builtin_nansf32x =  x)( __builtin_nans( x)
    #   builtin_huge_valf64x = )( __builtin_huge_vall()
    #   builtin_inff64x = )( __builtin_infl()
    #   builtin_nanf64x =  x)( __builtin_nanl( x)
    #   builtin_nansf64x =  x)( __builtin_nansl( x)
    #   AV_NE =  be, le)( le
    #   RSHIFT =  a, b)(( a)>0?(( a)+((1<<( b))>>1))>>( b):(( a)+((1<<( b))>>1)-1)>>( b)
    #   ROUNDED_DIV =  a, b)((( a)>0?( a)+(( b)>>1):( a)-(( b)>>1))/( b)
    #   AV_CEIL_RSHIFT =  a, b)(! av_builtin_constant_p( b)?-((-( a))>>( b)):(( a)+(1<<( b))-1)>>( b)
    # FF_CEIL_RSHIFT = AV_CEIL_RSHIFT
    #   FFUDIV =  a, b)((( a)>0?( a):( a)-( b)+1)/( b)
    #   FFUMOD =  a, b)(( a)-( b)* FFUDIV( a, b)
    #   FFABS =  a)(( a)>=0?( a):(-( a))
    #   FFSIGN =  a)(( a)>0?1:-1
    #   FFNABS =  a)(( a)<=0?( a):(-( a))
    #   FFDIFFSIGN =  x, y)((( x)>( y))-(( x)<( y))
    #   FFMAX =  a, b)(( a)>( b)?( a):( b)
    #   FFMAX3 =  a, b, c) FFMAX( FFMAX( a, b), c
    #   FFMIN =  a, b)(( a)>( b)?( b):( a)
    #   FFMIN3 =  a, b, c) FFMIN( FFMIN( a, b), c
    #   FFSWAP =  type, a, b) do{ type SWAP_tmp= b; b= a; a= SWAP_tmp;} while(0
    #   FF_ARRAY_ELEMS =  a)( sizeof( a)/ sizeof(( a)[0])
    # av_ceil_log2 = av_ceil_log2_c
    # av_clip = av_clip_c
    # av_clip64 = av_clip64_c
    # av_clip_uint8 = av_clip_uint8_c
    # av_clip_int8 = av_clip_int8_c
    # av_clip_uint16 = av_clip_uint16_c
    # av_clip_int16 = av_clip_int16_c
    # av_clipl_int32 = av_clipl_int32_c
    # av_clip_intp2 = av_clip_intp2_c
    # av_clip_uintp2 = av_clip_uintp2_c
    # av_mod_uintp2 = av_mod_uintp2_c
    # av_sat_add32 = av_sat_add32_c
    # av_sat_dadd32 = av_sat_dadd32_c
    # av_clipf = av_clipf_c
    # av_clipd = av_clipd_c
    # av_popcount = av_popcount_c
    # av_popcount64 = av_popcount64_c
    # av_parity = av_parity_c
    #   MKTAG =  a, b, c, d)(( a)|(( b)<<8)|(( c)<<16)|(( unsigned)( d)<<24)
    #   MKBETAG =  a, b, c, d)(( d)|(( c)<<8)|(( b)<<16)|(( unsigned)( a)<<24)
    #   GET_UTF8 = ( val, GET_BYTE, ERROR) val=( GET_BYTE);{ uint32_t top=( val&128)>>1; if(( val&0xc0)==0x80|| val>=0xFE) ERROR while( val& top){ int tmp=( GET_BYTE)-128; if( tmp>>6) ERROR val=( val<<6)+ tmp; top<<=5;} val&=( top<<1)-1;}
    #   GET_UTF16 = ( val, GET_16BIT, ERROR) val= GET_16BIT;{ unsigned int hi= val-0xD800; if( hi<0x800){ val= GET_16BIT-0xDC00; if( val>UInt.new(0x3FF)|| hi>UInt.new(0x3FF)) ERROR val+=( hi<<10)+0x10000;}}
    #   PUT_UTF8 = ( val, tmp, PUT_BYTE){ int bytes, shift; uint32_t in= val; if( in<0x80){ tmp= in; PUT_BYTE} else{ bytes=( av_log2( in)+4)/5; shift=( bytes-1)*6; tmp=(256-(256>> bytes))|( in>> shift); PUT_BYTE while( shift>=6){ shift-=6; tmp=0x80|(( in>> shift)&0x3f); PUT_BYTE}}}
    #   PUT_UTF16 = ( val, tmp, PUT_16BIT){ uint32_t in= val; if( in<0x10000){ tmp= in; PUT_16BIT} else{ tmp=0xD800|(( in-0x10000)>>10); PUT_16BIT tmp=0xDC00|(( in-0x10000)&0x3FF); PUT_16BIT}}
    alias Float32 = LibC::Float
    alias Float64 = LibC::Double
    alias Float32x = LibC::Double
    alias Float64x = LibC::LongDouble
    fun log2 = av_log2(LibC::UInt) : LibC::Int
    fun log2_16bit = av_log2_16bit(LibC::UInt) : LibC::Int
    fun clip_c = av_clip_c(LibC::Int, LibC::Int, LibC::Int) : LibC::Int
    fun clip64_c = av_clip64_c(Int64, Int64, Int64) : Int64
    fun clip_uint8_c = av_clip_uint8_c(LibC::Int) : UInt8
    fun clip_int8_c = av_clip_int8_c(LibC::Int) : Int8
    fun clip_uint16_c = av_clip_uint16_c(LibC::Int) : UInt16
    fun clip_int16_c = av_clip_int16_c(LibC::Int) : Int16
    fun clipl_int32_c = av_clipl_int32_c(Int64) : Int32
    fun clip_intp2_c = av_clip_intp2_c(LibC::Int, LibC::Int) : LibC::Int
    fun clip_uintp2_c = av_clip_uintp2_c(LibC::Int, LibC::Int) : LibC::UInt
    fun mod_uintp2_c = av_mod_uintp2_c(LibC::UInt, LibC::UInt) : LibC::UInt
    fun sat_add32_c = av_sat_add32_c(LibC::Int, LibC::Int) : LibC::Int
    fun sat_dadd32_c = av_sat_dadd32_c(LibC::Int, LibC::Int) : LibC::Int
    fun clipf_c = av_clipf_c(LibC::Float, LibC::Float, LibC::Float) : LibC::Float
    fun clipd_c = av_clipd_c(LibC::Double, LibC::Double, LibC::Double) : LibC::Double
    fun ceil_log2_c = av_ceil_log2_c(LibC::Int) : LibC::Int
    fun popcount_c = av_popcount_c(UInt32) : LibC::Int
    fun popcount64_c = av_popcount64_c(UInt64) : LibC::Int
    fun parity_c = av_parity_c(UInt32) : LibC::Int
  end
end
