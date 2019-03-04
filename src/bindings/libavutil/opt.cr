require "./rational"
require "./log"

module AV
  lib LibAVUtil
    enum OptFlag
      ENCODING_PARAM  =   1
      DECODING_PARAM  =   2
      METADATA        =   4
      AUDIO_PARAM     =   8
      VIDEO_PARAM     =  16
      SUBTITLE_PARAM  =  32
      EXPORT          =  64
      READONLY        = 128
      FILTERING_PARAM = 1 << 16
    end
    AV_OPT_SEARCH_CHILDREN       = 1 << 0
    AV_OPT_SEARCH_FAKE_OBJ       = 1 << 1
    AV_OPT_ALLOW_NULL            = 1 << 2
    AV_OPT_MULTI_COMPONENT_RANGE = 1 << 12
    #   av_opt_set_int_list =  obj, name, val, term, flags)( av_int_list_length( val, term)> INT_MAX/ sizeof(*( val))? AVERROR( EINVAL): av_opt_set_bin( obj, name,( const uint8_t*)( val), av_int_list_length( val, term)* sizeof(*( val)), flags)
    AV_OPT_SERIALIZE_SKIP_DEFAULTS   = 0x00000001
    AV_OPT_SERIALIZE_OPT_FLAGS_EXACT = 0x00000002
    enum AVOptionType : LibC::UInt
      FLAGS          =          0
      INT            =          1
      INT64          =          2
      DOUBLE         =          3
      FLOAT          =          4
      STRING         =          5
      RATIONAL       =          6
      BINARY         =          7
      DICT           =          8
      UINT64         =          9
      CONST          =        128
      IMAGE_SIZE     = 1397316165
      PIXEL_FMT      = 1346784596
      SAMPLE_FMT     = 1397116244
      VIDEO_RATE     = 1448231252
      DURATION       = 1146442272
      COLOR          = 1129270354
      CHANNEL_LAYOUT = 1128811585
      BOOL           = 1112493900
    end

    union AVOptionDefaultValue
      i64 : Int64
      dbl : Float64
      str : LibC::Char*
      q : Rational
    end

    struct AVOption
      name : LibC::Char*
      help : LibC::Char*
      offset : LibC::Int
      type : AVOptionType
      default_val : AVOptionDefaultValue
      min : LibC::Double
      max : LibC::Double
      flags : LibC::Int
      unit : LibC::Char*
    end

    struct AVOptionRange
      str : LibC::Char*
      value_min : LibC::Double
      value_max : LibC::Double
      component_min : LibC::Double
      component_max : LibC::Double
      is_range : LibC::Int
    end

    struct AVOptionRanges
      range : AVOptionRange**
      nb_ranges : LibC::Int
      nb_components : LibC::Int
    end

    fun opt_show2 = av_opt_show2(Void*, Void*, LibC::Int, LibC::Int) : LibC::Int
    fun opt_set_defaults = av_opt_set_defaults(Void*) : Void
    fun opt_set_defaults2 = av_opt_set_defaults2(Void*, LibC::Int, LibC::Int) : Void
    fun av_set_options_string(Void*, LibC::Char*, LibC::Char*, LibC::Char*) : LibC::Int
    fun opt_set_from_string = av_opt_set_from_string(Void*, LibC::Char*, LibC::Char**, LibC::Char*, LibC::Char*) : LibC::Int
    fun opt_free = av_opt_free(Void*) : Void
    fun opt_flag_is_set = av_opt_flag_is_set(Void*, LibC::Char*, LibC::Char*) : LibC::Int
    fun opt_set_dict = av_opt_set_dict(Void*, AVDictionary**) : LibC::Int
    fun opt_set_dict2 = av_opt_set_dict2(Void*, AVDictionary**, LibC::Int) : LibC::Int
    fun opt_get_key_value = av_opt_get_key_value(LibC::Char**, LibC::Char*, LibC::Char*, LibC::UInt, LibC::Char**, LibC::Char**) : LibC::Int
    fun opt_eval_flags = av_opt_eval_flags(Void*, AVOption*, LibC::Char*, LibC::Int*) : LibC::Int
    fun opt_eval_int = av_opt_eval_int(Void*, AVOption*, LibC::Char*, LibC::Int*) : LibC::Int
    fun opt_eval_int64 = av_opt_eval_int64(Void*, AVOption*, LibC::Char*, Int64T*) : LibC::Int
    fun opt_eval_float = av_opt_eval_float(Void*, AVOption*, LibC::Char*, LibC::Float*) : LibC::Int
    fun opt_eval_double = av_opt_eval_double(Void*, AVOption*, LibC::Char*, LibC::Double*) : LibC::Int
    fun opt_eval_q = av_opt_eval_q(Void*, AVOption*, LibC::Char*, Rational*) : LibC::Int
    fun opt_find = av_opt_find(Void*, LibC::Char*, LibC::Char*, LibC::Int, LibC::Int) : AVOption*
    fun opt_find2 = av_opt_find2(Void*, LibC::Char*, LibC::Char*, LibC::Int, LibC::Int, Void**) : AVOption*
    fun opt_next = av_opt_next(Void*, AVOption*) : AVOption*
    fun opt_child_next = av_opt_child_next(Void*, Void*) : Void*
    fun opt_child_class_next = av_opt_child_class_next(LibAVUtil::Class*, LibAVUtil::Class*) : LibAVUtil::Class*
    fun opt_set = av_opt_set(Void*, LibC::Char*, LibC::Char*, LibC::Int) : LibC::Int
    fun opt_set_int = av_opt_set_int(Void*, LibC::Char*, Int64T, LibC::Int) : LibC::Int
    fun opt_set_double = av_opt_set_double(Void*, LibC::Char*, LibC::Double, LibC::Int) : LibC::Int
    fun opt_set_q = av_opt_set_q(Void*, LibC::Char*, Rational, LibC::Int) : LibC::Int
    fun opt_set_bin = av_opt_set_bin(Void*, LibC::Char*, Uint8T*, LibC::Int, LibC::Int) : LibC::Int
    fun opt_set_image_size = av_opt_set_image_size(Void*, LibC::Char*, LibC::Int, LibC::Int, LibC::Int) : LibC::Int
    fun opt_set_pixel_fmt = av_opt_set_pixel_fmt(Void*, LibC::Char*, AVPixelFormat, LibC::Int) : LibC::Int
    fun opt_set_sample_fmt = av_opt_set_sample_fmt(Void*, LibC::Char*, SampleFormat, LibC::Int) : LibC::Int
    fun opt_set_video_rate = av_opt_set_video_rate(Void*, LibC::Char*, Rational, LibC::Int) : LibC::Int
    fun opt_set_channel_layout = av_opt_set_channel_layout(Void*, LibC::Char*, Int64T, LibC::Int) : LibC::Int
    fun opt_set_dict_val = av_opt_set_dict_val(Void*, LibC::Char*, AVDictionary*, LibC::Int) : LibC::Int
    fun opt_get = av_opt_get(Void*, LibC::Char*, LibC::Int, UInt8**) : LibC::Int
    fun opt_get_int = av_opt_get_int(Void*, LibC::Char*, LibC::Int, Int64T*) : LibC::Int
    fun opt_get_double = av_opt_get_double(Void*, LibC::Char*, LibC::Int, LibC::Double*) : LibC::Int
    fun opt_get_q = av_opt_get_q(Void*, LibC::Char*, LibC::Int, Rational*) : LibC::Int
    fun opt_get_image_size = av_opt_get_image_size(Void*, LibC::Char*, LibC::Int, LibC::Int*, LibC::Int*) : LibC::Int
    fun opt_get_pixel_fmt = av_opt_get_pixel_fmt(Void*, LibC::Char*, LibC::Int, AVPixelFormat*) : LibC::Int
    fun opt_get_sample_fmt = av_opt_get_sample_fmt(Void*, LibC::Char*, LibC::Int, SampleFormat*) : LibC::Int
    fun opt_get_video_rate = av_opt_get_video_rate(Void*, LibC::Char*, LibC::Int, Rational*) : LibC::Int
    fun opt_get_channel_layout = av_opt_get_channel_layout(Void*, LibC::Char*, LibC::Int, Int64T*) : LibC::Int
    fun opt_get_dict_val = av_opt_get_dict_val(Void*, LibC::Char*, LibC::Int, AVDictionary**) : LibC::Int
    fun opt_ptr = av_opt_ptr(LibAVUtil::Class*, Void*, LibC::Char*) : Void*
    fun opt_freep_ranges = av_opt_freep_ranges(AVOptionRanges**) : Void
    fun opt_query_ranges = av_opt_query_ranges(AVOptionRanges**, Void*, LibC::Char*, LibC::Int) : LibC::Int
    fun opt_copy = av_opt_copy(Void*, Void*) : LibC::Int
    fun opt_query_ranges_default = av_opt_query_ranges_default(AVOptionRanges**, Void*, LibC::Char*, LibC::Int) : LibC::Int
    fun opt_is_set_to_default = av_opt_is_set_to_default(Void*, AVOption*) : LibC::Int
    fun opt_is_set_to_default_by_name = av_opt_is_set_to_default_by_name(Void*, LibC::Char*, LibC::Int) : LibC::Int
    fun opt_serialize = av_opt_serialize(Void*, LibC::Int, LibC::Int, LibC::Char**, LibC::Char, LibC::Char) : LibC::Int
  end
end
