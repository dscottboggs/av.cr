module AV
  lib LibAVUtil
    FF_LAMBDA_SHIFT  = 7
    FF_LAMBDA_SCALE  = 1 << FF_LAMBDA_SHIFT
    FF_QP2LAMBDA     = 118
    FF_LAMBDA_MAX    = 256*128 - 1
    FF_QUALITY_SCALE = FF_LAMBDA_SCALE
    #   AV_NOPTS_VALUE = ( int64_t) UINT64_C(0x8000000000000000)
    AV_TIME_BASE = 1000000
    #   AV_TIME_BASE_Q = ( AVRational){1, AV_TIME_BASE}
    #   av_int_list_length =  list, term) av_int_list_length_for_size( sizeof(*( list)), list, term
    AV_FOURCC_MAX_STRING_SIZE = 32
    #   av_fourcc2str =  fourcc) av_fourcc_make_string(( char[ AV_FOURCC_MAX_STRING_SIZE]){0}, fourcc
    fun avutil_version : LibC::UInt
    fun version_info = av_version_info : LibC::Char*
    fun avutil_configuration : LibC::Char*
    fun avutil_license : LibC::Char*
    enum AVMediaType : LibC::Int
      UNKNOWN    = -1
      VIDEO      =  0
      AUDIO      =  1
      DATA       =  2
      SUBTITLE   =  3
      ATTACHMENT =  4
      NB         =  5
    end
    fun get_media_type_string = av_get_media_type_string(AVMediaType) : LibC::Char*
    enum AVPictureType : LibC::UInt
      NONE = 0
      I    = 1
      P    = 2
      B    = 3
      S    = 4
      SI   = 5
      SP   = 6
      BI   = 7
    end
    fun get_picture_type_char = av_get_picture_type_char(AVPictureType) : LibC::Char
    fun x_if_null = av_x_if_null(Void*, Void*) : Void*
    fun int_list_length_for_size = av_int_list_length_for_size(LibC::UInt, Void*, UInt64) : LibC::UInt
    fun fopen_utf8 = av_fopen_utf8(LibC::Char*, LibC::Char*) : FILE*
    fun get_time_base_q = av_get_time_base_q : AVRational
    fun fourcc_make_string = av_fourcc_make_string(LibC::Char*, UInt32) : LibC::Char*
  end
end
