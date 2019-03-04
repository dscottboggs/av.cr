module AV
  lib LibAVUtil
    #   AVUTIL_AVUTIL_H =
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
    fun av_version_info : LibC::Char*
    fun avutil_configuration : LibC::Char*
    fun avutil_license : LibC::Char*
    enum AVMediaType : LibC::Int
      AVMEDIA_TYPE_UNKNOWN    = -1
      AVMEDIA_TYPE_VIDEO      =  0
      AVMEDIA_TYPE_AUDIO      =  1
      AVMEDIA_TYPE_DATA       =  2
      AVMEDIA_TYPE_SUBTITLE   =  3
      AVMEDIA_TYPE_ATTACHMENT =  4
      AVMEDIA_TYPE_NB         =  5
    end
    fun av_get_media_type_string(AVMediaType) : LibC::Char*
    enum AVPictureType : LibC::UInt
      AV_PICTURE_TYPE_NONE = 0
      AV_PICTURE_TYPE_I    = 1
      AV_PICTURE_TYPE_P    = 2
      AV_PICTURE_TYPE_B    = 3
      AV_PICTURE_TYPE_S    = 4
      AV_PICTURE_TYPE_SI   = 5
      AV_PICTURE_TYPE_SP   = 6
      AV_PICTURE_TYPE_BI   = 7
    end
    fun av_get_picture_type_char(AVPictureType) : LibC::Char
    fun av_x_if_null(Void*, Void*) : Void*
    fun av_int_list_length_for_size(LibC::UInt, Void*, UInt64) : LibC::UInt
    fun av_fopen_utf8(LibC::Char*, LibC::Char*) : FILE*
    fun av_get_time_base_q : AVRational
    fun av_fourcc_make_string(LibC::Char*, UInt32) : LibC::Char*
  end
end
