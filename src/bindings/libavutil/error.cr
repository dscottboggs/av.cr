module AV
  lib LibAVUtil
    # NOTE: this file contains macros which have not been translated, and may be
    # incomplete!

    #   AVUTIL_ERROR_H =
    #   AVERROR =  e)(-( e)
    #   AVUNERROR =  e)(-( e)
    #   FFERRTAG =  a, b, c, d)(-( int) MKTAG( a, b, c, d)
    #   AVERROR_BSF_NOT_FOUND = FFERRTAG(0xF8,'B','S','F')
    #   AVERROR_BUG = FFERRTAG('B','U','G','!')
    #   AVERROR_BUFFER_TOO_SMALL = FFERRTAG('B','U','F','S')
    #   AVERROR_DECODER_NOT_FOUND = FFERRTAG(0xF8,'D','E','C')
    #   AVERROR_DEMUXER_NOT_FOUND = FFERRTAG(0xF8,'D','E','M')
    #   AVERROR_ENCODER_NOT_FOUND = FFERRTAG(0xF8,'E','N','C')
    #   AVERROR_EOF = FFERRTAG('E','O','F',' ')
    #   AVERROR_EXIT = FFERRTAG('E','X','I','T')
    #   AVERROR_EXTERNAL = FFERRTAG('E','X','T',' ')
    #   AVERROR_FILTER_NOT_FOUND = FFERRTAG(0xF8,'F','I','L')
    #   AVERROR_INVALIDDATA = FFERRTAG('I','N','D','A')
    #   AVERROR_MUXER_NOT_FOUND = FFERRTAG(0xF8,'M','U','X')
    #   AVERROR_OPTION_NOT_FOUND = FFERRTAG(0xF8,'O','P','T')
    #   AVERROR_PATCHWELCOME = FFERRTAG('P','A','W','E')
    #   AVERROR_PROTOCOL_NOT_FOUND = FFERRTAG(0xF8,'P','R','O')
    #   AVERROR_STREAM_NOT_FOUND = FFERRTAG(0xF8,'S','T','R')
    #   AVERROR_BUG2 = FFERRTAG('B','U','G',' ')
    #   AVERROR_UNKNOWN = FFERRTAG('U','N','K','N')
    AVERROR_EXPERIMENTAL   = -0x2bb2afa8
    AVERROR_INPUT_CHANGED  = -0x636e6701
    AVERROR_OUTPUT_CHANGED = -0x636e6702
    #   AVERROR_HTTP_BAD_REQUEST = FFERRTAG(0xF8,'4','0','0')
    #   AVERROR_HTTP_UNAUTHORIZED = FFERRTAG(0xF8,'4','0','1')
    #   AVERROR_HTTP_FORBIDDEN = FFERRTAG(0xF8,'4','0','3')
    #   AVERROR_HTTP_NOT_FOUND = FFERRTAG(0xF8,'4','0','4')
    #   AVERROR_HTTP_OTHER_4XX = FFERRTAG(0xF8,'4','X','X')
    #   AVERROR_HTTP_SERVER_ERROR = FFERRTAG(0xF8,'5','X','X')
    AV_ERROR_MAX_STRING_SIZE = 64
    #   av_err2str =  errnum) av_make_error_string(( char[ AV_ERROR_MAX_STRING_SIZE]){0}, AV_ERROR_MAX_STRING_SIZE, errnum
    fun strerror = av_strerror(LibC::Int, LibC::Char*, SizeT) : LibC::Int
    fun make_error_string = av_make_error_string(LibC::Char*, SizeT, LibC::Int) : LibC::Char*
  end
end
