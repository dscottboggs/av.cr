module AV
  lib LibAVUtil
    #   AVUTIL_BSWAP_H =
    #   AV_BSWAP16C =  x)((( x)<<8&0xff00)|(( x)>>8&0x00ff)
    #   AV_BSWAP32C =  x)( AV_BSWAP16C( x)<<16| AV_BSWAP16C(( x)>>16)
    #   AV_BSWAP64C =  x)( AV_BSWAP32C( x)<<32| AV_BSWAP32C(( x)>>32)
    #   AV_BSWAPC =  s, x) AV_BSWAP## s## C( x
    #   av_be2ne16 =  x) av_bswap16( x
    #   av_be2ne32 =  x) av_bswap32( x
    #   av_be2ne64 =  x) av_bswap64( x
    #   av_le2ne16 =  x)( x
    #   av_le2ne32 =  x)( x
    #   av_le2ne64 =  x)( x
    #   AV_BE2NEC =  s, x) AV_BSWAPC( s, x
    #   AV_LE2NEC =  s, x)( x
    #   AV_BE2NE16C =  x) AV_BE2NEC(16, x
    #   AV_BE2NE32C =  x) AV_BE2NEC(32, x
    #   AV_BE2NE64C =  x) AV_BE2NEC(64, x
    #   AV_LE2NE16C =  x) AV_LE2NEC(16, x
    #   AV_LE2NE32C =  x) AV_LE2NEC(32, x
    #   AV_LE2NE64C =  x) AV_LE2NEC(64, x
    fun av_bswap16(UInt16) : UInt16
    fun av_bswap32(UInt32) : UInt32
    fun av_bswap64(UInt64) : UInt64
  end
end
