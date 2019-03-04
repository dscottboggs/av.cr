module AV
  lib LibAVUtil
    #   AVUTIL_DICT_H =
    AV_DICT_MATCH_CASE      =  1
    AV_DICT_IGNORE_SUFFIX   =  2
    AV_DICT_DONT_STRDUP_KEY =  4
    AV_DICT_DONT_STRDUP_VAL =  8
    AV_DICT_DONT_OVERWRITE  = 16
    AV_DICT_APPEND          = 32
    AV_DICT_MULTIKEY        = 64

    struct AVDictionaryEntry
      key : LibC::Char*
      value : LibC::Char*
    end

    type AVDictionary = Void
    fun av_dict_get(AVDictionary*, LibC::Char*, AVDictionaryEntry*, LibC::Int) : AVDictionaryEntry*
    fun av_dict_count(AVDictionary*) : LibC::Int
    fun av_dict_set(AVDictionary**, LibC::Char*, LibC::Char*, LibC::Int) : LibC::Int
    fun av_dict_set_int(AVDictionary**, LibC::Char*, Int64T, LibC::Int) : LibC::Int
    fun av_dict_parse_string(AVDictionary**, LibC::Char*, LibC::Char*, LibC::Char*, LibC::Int) : LibC::Int
    fun av_dict_copy(AVDictionary**, AVDictionary*, LibC::Int) : LibC::Int
    fun av_dict_free(AVDictionary**) : Void
    fun av_dict_get_string(AVDictionary*, LibC::Char**, LibC::Char, LibC::Char) : LibC::Int
  end
end
