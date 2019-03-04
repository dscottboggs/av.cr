module AV
  lib LibAVUtil
    #   AVUTIL_INTREADWRITE_H =
    #   AV_RN =  s, p)((( const union unaligned_## s*)( p))-> l
    #   AV_WN =  s, p, v)(((( union unaligned_## s*)( p))-> l)=( v)
    #   AV_RN16 =  p) AV_RN(16, p
    #   AV_RN32 =  p) AV_RN(32, p
    #   AV_RN64 =  p) AV_RN(64, p
    #   AV_WN16 =  p, v) AV_WN(16, p, v
    #   AV_WN32 =  p, v) AV_WN(32, p, v
    #   AV_WN64 =  p, v) AV_WN(64, p, v
    #   AV_RB =  s, p) av_bswap## s( AV_RN## s( p)
    #   AV_WB =  s, p, v) AV_WN## s( p, av_bswap## s( v)
    #   AV_RL =  s, p) AV_RN## s( p
    #   AV_WL =  s, p, v) AV_WN## s( p, v
    #   AV_RB8 =  x)((( const uint8_t*)( x))[0]
    #   AV_WB8 =  p, d) do{(( uint8_t*)( p))[0]=( d);} while(0
    #   AV_RL8 =  x) AV_RB8( x
    #   AV_WL8 =  p, d) AV_WB8( p, d
    #   AV_RB16 =  p) AV_RB(16, p
    #   AV_WB16 =  p, v) AV_WB(16, p, v
    #   AV_RL16 =  p) AV_RL(16, p
    #   AV_WL16 =  p, v) AV_WL(16, p, v
    #   AV_RB32 =  p) AV_RB(32, p
    #   AV_WB32 =  p, v) AV_WB(32, p, v
    #   AV_RL32 =  p) AV_RL(32, p
    #   AV_WL32 =  p, v) AV_WL(32, p, v
    #   AV_RB64 =  p) AV_RB(64, p
    #   AV_WB64 =  p, v) AV_WB(64, p, v
    #   AV_RL64 =  p) AV_RL(64, p
    #   AV_WL64 =  p, v) AV_WL(64, p, v
    #   AV_RB24 =  x)(((( const uint8_t*)( x))[0]<<16)|((( const uint8_t*)( x))[1]<<8)|(( const uint8_t*)( x))[2]
    #   AV_WB24 =  p, d) do{(( uint8_t*)( p))[2]=( d);(( uint8_t*)( p))[1]=( d)>>8;(( uint8_t*)( p))[0]=( d)>>16;} while(0
    #   AV_RL24 =  x)(((( const uint8_t*)( x))[2]<<16)|((( const uint8_t*)( x))[1]<<8)|(( const uint8_t*)( x))[0]
    #   AV_WL24 =  p, d) do{(( uint8_t*)( p))[0]=( d);(( uint8_t*)( p))[1]=( d)>>8;(( uint8_t*)( p))[2]=( d)>>16;} while(0
    #   AV_RB48 =  x)((( uint64_t)(( const uint8_t*)( x))[0]<<40)|(( uint64_t)(( const uint8_t*)( x))[1]<<32)|(( uint64_t)(( const uint8_t*)( x))[2]<<24)|(( uint64_t)(( const uint8_t*)( x))[3]<<16)|(( uint64_t)(( const uint8_t*)( x))[4]<<8)|( uint64_t)(( const uint8_t*)( x))[5]
    #   AV_WB48 =  p, darg) do{ uint64_t d=( darg);(( uint8_t*)( p))[5]=( d);(( uint8_t*)( p))[4]=( d)>>8;(( uint8_t*)( p))[3]=( d)>>16;(( uint8_t*)( p))[2]=( d)>>24;(( uint8_t*)( p))[1]=( d)>>32;(( uint8_t*)( p))[0]=( d)>>40;} while(0
    #   AV_RL48 =  x)((( uint64_t)(( const uint8_t*)( x))[5]<<40)|(( uint64_t)(( const uint8_t*)( x))[4]<<32)|(( uint64_t)(( const uint8_t*)( x))[3]<<24)|(( uint64_t)(( const uint8_t*)( x))[2]<<16)|(( uint64_t)(( const uint8_t*)( x))[1]<<8)|( uint64_t)(( const uint8_t*)( x))[0]
    #   AV_WL48 =  p, darg) do{ uint64_t d=( darg);(( uint8_t*)( p))[0]=( d);(( uint8_t*)( p))[1]=( d)>>8;(( uint8_t*)( p))[2]=( d)>>16;(( uint8_t*)( p))[3]=( d)>>24;(( uint8_t*)( p))[4]=( d)>>32;(( uint8_t*)( p))[5]=( d)>>40;} while(0
    #   AV_RNA =  s, p)((( const av_alias## s*)( p))-> u## s
    #   AV_WNA =  s, p, v)((( av_alias## s*)( p))-> u## s=( v)
    #   AV_RN16A =  p) AV_RNA(16, p
    #   AV_RN32A =  p) AV_RNA(32, p
    #   AV_RN64A =  p) AV_RNA(64, p
    #   AV_WN16A =  p, v) AV_WNA(16, p, v
    #   AV_WN32A =  p, v) AV_WNA(32, p, v
    #   AV_WN64A =  p, v) AV_WNA(64, p, v
    #   AV_COPYU = ( n, d, s) AV_WN## n( d, AV_RN## n( s));
    #   AV_COPY16U =  d, s) AV_COPYU(16, d, s
    #   AV_COPY32U =  d, s) AV_COPYU(32, d, s
    #   AV_COPY64U =  d, s) AV_COPYU(64, d, s
    #   AV_COPY128U =  d, s) do{ AV_COPY64U( d, s); AV_COPY64U(( char*)( d)+8,( const char*)( s)+8);} while(0
    #   AV_COPY =  n, d, s)((( av_alias## n*)( d))-> u## n=(( const av_alias## n*)( s))-> u## n
    #   AV_COPY16 =  d, s) AV_COPY(16, d, s
    #   AV_COPY32 =  d, s) AV_COPY(32, d, s
    #   AV_COPY64 =  d, s) AV_COPY(64, d, s
    #   AV_COPY128 =  d, s) do{ AV_COPY64( d, s); AV_COPY64(( char*)( d)+8,( char*)( s)+8);} while(0
    #   AV_SWAP =  n, a, b) FFSWAP( av_alias## n,*( av_alias## n*)( a),*( av_alias## n*)( b)
    #   AV_SWAP64 =  a, b) AV_SWAP(64, a, b
    #   AV_ZERO =  n, d)((( av_alias## n*)( d))-> u## n=0
    #   AV_ZERO16 =  d) AV_ZERO(16, d
    #   AV_ZERO32 =  d) AV_ZERO(32, d
    #   AV_ZERO64 =  d) AV_ZERO(64, d
    #   AV_ZERO128 =  d) do{ AV_ZERO64( d); AV_ZERO64(( char*)( d)+8);} while(0
    struct AvAlias64
      # WARNING: unexpected FirstAttr within UnionDecl (visit_struct)
      u64 : UInt64
      u32 : StaticArray(UInt32, 2)
      u16 : StaticArray(UInt16, 4)
      u8 : StaticArray(UInt8, 8)
      f64 : LibC::Double
      f32 : StaticArray(LibC::Float, 2)
    end

    struct AvAlias32
      # WARNING: unexpected FirstAttr within UnionDecl (visit_struct)
      u32 : UInt32
      u16 : StaticArray(UInt16, 2)
      u8 : StaticArray(UInt8, 4)
      f32 : LibC::Float
    end

    struct AvAlias16
      # WARNING: unexpected FirstAttr within UnionDecl (visit_struct)
      u16 : UInt16
      u8 : StaticArray(UInt8, 2)
    end
  end
end
