module AV
  lib LibAVUtil
    #   AVUTIL_AVSTRING_H =
    AV_ESCAPE_FLAG_WHITESPACE                      = 1 << 0
    AV_ESCAPE_FLAG_STRICT                          = 1 << 1
    AV_UTF8_FLAG_ACCEPT_INVALID_BIG_CODES          = 1
    AV_UTF8_FLAG_ACCEPT_NON_CHARACTERS             = 2
    AV_UTF8_FLAG_ACCEPT_SURROGATES                 = 4
    AV_UTF8_FLAG_EXCLUDE_XML_INVALID_CONTROL_CODES = 8
    AV_UTF8_FLAG_ACCEPT_ALL                        = AV_UTF8_FLAG_ACCEPT_INVALID_BIG_CODES | AV_UTF8_FLAG_ACCEPT_NON_CHARACTERS | AV_UTF8_FLAG_ACCEPT_SURROGATES
    fun av_strstart(LibC::Char*, LibC::Char*, LibC::Char**) : LibC::Int
    fun av_stristart(LibC::Char*, LibC::Char*, LibC::Char**) : LibC::Int
    fun av_stristr(LibC::Char*, LibC::Char*) : LibC::Char*
    fun av_strnstr(LibC::Char*, LibC::Char*, SizeT) : LibC::Char*
    fun av_strlcpy(LibC::Char*, LibC::Char*, SizeT) : SizeT
    fun av_strlcat(LibC::Char*, LibC::Char*, SizeT) : SizeT
    fun av_strlcatf(LibC::Char*, SizeT, LibC::Char*) : SizeT
    fun av_strnlen(LibC::Char*, SizeT) : SizeT
    fun av_asprintf(LibC::Char*) : LibC::Char*
    fun av_d2str(LibC::Double) : LibC::Char*
    fun av_get_token(LibC::Char**, LibC::Char*) : LibC::Char*
    fun av_strtok(LibC::Char*, LibC::Char*, LibC::Char**) : LibC::Char*
    fun av_isdigit(LibC::Int) : LibC::Int
    fun av_isgraph(LibC::Int) : LibC::Int
    fun av_isspace(LibC::Int) : LibC::Int
    fun av_toupper(LibC::Int) : LibC::Int
    fun av_tolower(LibC::Int) : LibC::Int
    fun av_isxdigit(LibC::Int) : LibC::Int
    fun av_strcasecmp(LibC::Char*, LibC::Char*) : LibC::Int
    fun av_strncasecmp(LibC::Char*, LibC::Char*, SizeT) : LibC::Int
    fun av_strireplace(LibC::Char*, LibC::Char*, LibC::Char*) : LibC::Char*
    fun av_basename(LibC::Char*) : LibC::Char*
    fun av_dirname(LibC::Char*) : LibC::Char*
    fun av_match_name(LibC::Char*, LibC::Char*) : LibC::Int
    fun av_append_path_component(LibC::Char*, LibC::Char*) : LibC::Char*
    enum AVEscapeMode : LibC::UInt
      AV_ESCAPE_MODE_AUTO      = 0
      AV_ESCAPE_MODE_BACKSLASH = 1
      AV_ESCAPE_MODE_QUOTE     = 2
    end
    fun av_escape(LibC::Char**, LibC::Char*, LibC::Char*, AVEscapeMode, LibC::Int) : LibC::Int
    fun av_utf8_decode(Int32T*, Uint8T**, Uint8T*, LibC::UInt) : LibC::Int
    fun av_match_list(LibC::Char*, LibC::Char*, LibC::Char) : LibC::Int
  end
end
