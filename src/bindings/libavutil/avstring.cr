module AV
  lib LibAVUtil
    AV_ESCAPE_FLAG_WHITESPACE                      = 1 << 0
    AV_ESCAPE_FLAG_STRICT                          = 1 << 1
    AV_UTF8_FLAG_ACCEPT_INVALID_BIG_CODES          = 1
    AV_UTF8_FLAG_ACCEPT_NON_CHARACTERS             = 2
    AV_UTF8_FLAG_ACCEPT_SURROGATES                 = 4
    AV_UTF8_FLAG_EXCLUDE_XML_INVALID_CONTROL_CODES = 8
    AV_UTF8_FLAG_ACCEPT_ALL                        = AV_UTF8_FLAG_ACCEPT_INVALID_BIG_CODES | AV_UTF8_FLAG_ACCEPT_NON_CHARACTERS | AV_UTF8_FLAG_ACCEPT_SURROGATES
    fun strstart = av_strstart(LibC::Char*, LibC::Char*, LibC::Char**) : LibC::Int
    fun stristart = av_stristart(LibC::Char*, LibC::Char*, LibC::Char**) : LibC::Int
    fun stristr = av_stristr(LibC::Char*, LibC::Char*) : LibC::Char*
    fun strnstr = av_strnstr(LibC::Char*, LibC::Char*, SizeT) : LibC::Char*
    fun strlcpy = av_strlcpy(LibC::Char*, LibC::Char*, SizeT) : SizeT
    fun strlcat = av_strlcat(LibC::Char*, LibC::Char*, SizeT) : SizeT
    fun strlcatf = av_strlcatf(LibC::Char*, SizeT, LibC::Char*) : SizeT
    fun strnlen = av_strnlen(LibC::Char*, SizeT) : SizeT
    fun asprintf = av_asprintf(LibC::Char*) : LibC::Char*
    fun d2str = av_d2str(LibC::Double) : LibC::Char*
    fun get_token = av_get_token(LibC::Char**, LibC::Char*) : LibC::Char*
    fun strtok = av_strtok(LibC::Char*, LibC::Char*, LibC::Char**) : LibC::Char*
    fun isdigit = av_isdigit(LibC::Int) : LibC::Int
    fun isgraph = av_isgraph(LibC::Int) : LibC::Int
    fun isspace = av_isspace(LibC::Int) : LibC::Int
    fun toupper = av_toupper(LibC::Int) : LibC::Int
    fun tolower = av_tolower(LibC::Int) : LibC::Int
    fun isxdigit = av_isxdigit(LibC::Int) : LibC::Int
    fun strcasecmp = av_strcasecmp(LibC::Char*, LibC::Char*) : LibC::Int
    fun strncasecmp = av_strncasecmp(LibC::Char*, LibC::Char*, SizeT) : LibC::Int
    fun strireplace = av_strireplace(LibC::Char*, LibC::Char*, LibC::Char*) : LibC::Char*
    fun basename = av_basename(LibC::Char*) : LibC::Char*
    fun dirname = av_dirname(LibC::Char*) : LibC::Char*
    fun match_name = av_match_name(LibC::Char*, LibC::Char*) : LibC::Int
    fun append_path_component = av_append_path_component(LibC::Char*, LibC::Char*) : LibC::Char*
    enum EscapeMode : LibC::UInt
      AUTO      = 0
      BACKSLASH = 1
      QUOTE     = 2
    end
    fun escape = av_escape(LibC::Char**, LibC::Char*, LibC::Char*, EscapeMode, LibC::Int) : LibC::Int
    fun utf8_decode = av_utf8_decode(Int32T*, Uint8T**, Uint8T*, LibC::UInt) : LibC::Int
    fun match_list = av_match_list(LibC::Char*, LibC::Char*, LibC::Char) : LibC::Int
  end
end
