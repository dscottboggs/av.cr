module AV
  lib LibAVUtil
    AV_DICT_MATCH_CASE      =  1
    AV_DICT_IGNORE_SUFFIX   =  2
    AV_DICT_DONT_STRDUP_KEY =  4
    AV_DICT_DONT_STRDUP_VAL =  8
    AV_DICT_DONT_OVERWRITE  = 16
    AV_DICT_APPEND          = 32
    AV_DICT_MULTIKEY        = 64

    struct DictionaryEntry
      key : LibC::Char*
      value : LibC::Char*
    end

    type Dictionary = Void
    fun av_dict_get(Dictionary*, LibC::Char*, DictionaryEntry*, LibC::Int) : DictionaryEntry*
    fun av_dict_count(Dictionary*) : LibC::Int
    fun av_dict_set(Dictionary**, LibC::Char*, LibC::Char*, LibC::Int) : LibC::Int
    fun av_dict_set_int(Dictionary**, LibC::Char*, Int64, LibC::Int) : LibC::Int
    fun av_dict_parse_string(Dictionary**, LibC::Char*, LibC::Char*, LibC::Char*, LibC::Int) : LibC::Int
    fun av_dict_copy(Dictionary**, Dictionary*, LibC::Int) : LibC::Int
    fun av_dict_free(Dictionary**) : Void
    fun av_dict_get_string(Dictionary*, LibC::Char**, LibC::Char, LibC::Char) : LibC::Int
  end
end
