module AV
lib LibAVUtil
#   AVUTIL_OPT_H = 
    AV_OPT_FLAG_ENCODING_PARAM = 1
    AV_OPT_FLAG_DECODING_PARAM = 2
    AV_OPT_FLAG_METADATA = 4
    AV_OPT_FLAG_AUDIO_PARAM = 8
    AV_OPT_FLAG_VIDEO_PARAM = 16
    AV_OPT_FLAG_SUBTITLE_PARAM = 32
    AV_OPT_FLAG_EXPORT = 64
    AV_OPT_FLAG_READONLY = 128
    AV_OPT_FLAG_FILTERING_PARAM = 1<<16
    AV_OPT_SEARCH_CHILDREN = 1<<0
    AV_OPT_SEARCH_FAKE_OBJ = 1<<1
    AV_OPT_ALLOW_NULL = 1<<2
    AV_OPT_MULTI_COMPONENT_RANGE = 1<<12
#   av_opt_set_int_list =  obj, name, val, term, flags)( av_int_list_length( val, term)> INT_MAX/ sizeof(*( val))? AVERROR( EINVAL): av_opt_set_bin( obj, name,( const uint8_t*)( val), av_int_list_length( val, term)* sizeof(*( val)), flags)
    AV_OPT_SERIALIZE_SKIP_DEFAULTS = 0x00000001
    AV_OPT_SERIALIZE_OPT_FLAGS_EXACT = 0x00000002
  enum AVOptionType : LibC::UInt
    AV_OPT_TYPE_FLAGS = 0
    AV_OPT_TYPE_INT = 1
    AV_OPT_TYPE_INT64 = 2
    AV_OPT_TYPE_DOUBLE = 3
    AV_OPT_TYPE_FLOAT = 4
    AV_OPT_TYPE_STRING = 5
    AV_OPT_TYPE_RATIONAL = 6
    AV_OPT_TYPE_BINARY = 7
    AV_OPT_TYPE_DICT = 8
    AV_OPT_TYPE_UINT64 = 9
    AV_OPT_TYPE_CONST = 128
    AV_OPT_TYPE_IMAGE_SIZE = 1397316165
    AV_OPT_TYPE_PIXEL_FMT = 1346784596
    AV_OPT_TYPE_SAMPLE_FMT = 1397116244
    AV_OPT_TYPE_VIDEO_RATE = 1448231252
    AV_OPT_TYPE_DURATION = 1146442272
    AV_OPT_TYPE_COLOR = 1129270354
    AV_OPT_TYPE_CHANNEL_LAYOUT = 1128811585
    AV_OPT_TYPE_BOOL = 1112493900
  end
  struct AVOption
    name : LibC::Char*
    help : LibC::Char*
    offset : LibC::Int
    type : AVOptionType
    # WARNING: unexpected UnionDecl within StructDecl (visit_struct)
    default_val : Union AVOption::(anonymous at /usr/include/x8664-linux-gnu/libavutil/opt.h:265:5)
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

  fun av_opt_show2(Void*, Void*, LibC::Int, LibC::Int) : LibC::Int
  fun av_opt_set_defaults(Void*) : Void
  fun av_opt_set_defaults2(Void*, LibC::Int, LibC::Int) : Void
  fun av_set_options_string(Void*, LibC::Char*, LibC::Char*, LibC::Char*) : LibC::Int
  fun av_opt_set_from_string(Void*, LibC::Char*, LibC::Char**, LibC::Char*, LibC::Char*) : LibC::Int
  fun av_opt_free(Void*) : Void
  fun av_opt_flag_is_set(Void*, LibC::Char*, LibC::Char*) : LibC::Int
  fun av_opt_set_dict(Void*, AVDictionary**) : LibC::Int
  fun av_opt_set_dict2(Void*, AVDictionary**, LibC::Int) : LibC::Int
  fun av_opt_get_key_value(LibC::Char**, LibC::Char*, LibC::Char*, LibC::UInt, LibC::Char**, LibC::Char**) : LibC::Int
  fun av_opt_eval_flags(Void*, AVOption*, LibC::Char*, LibC::Int*) : LibC::Int
  fun av_opt_eval_int(Void*, AVOption*, LibC::Char*, LibC::Int*) : LibC::Int
  fun av_opt_eval_int64(Void*, AVOption*, LibC::Char*, Int64T*) : LibC::Int
  fun av_opt_eval_float(Void*, AVOption*, LibC::Char*, LibC::Float*) : LibC::Int
  fun av_opt_eval_double(Void*, AVOption*, LibC::Char*, LibC::Double*) : LibC::Int
  fun av_opt_eval_q(Void*, AVOption*, LibC::Char*, AVRational*) : LibC::Int
  fun av_opt_find(Void*, LibC::Char*, LibC::Char*, LibC::Int, LibC::Int) : AVOption*
  fun av_opt_find2(Void*, LibC::Char*, LibC::Char*, LibC::Int, LibC::Int, Void**) : AVOption*
  fun av_opt_next(Void*, AVOption*) : AVOption*
  fun av_opt_child_next(Void*, Void*) : Void*
  fun av_opt_child_class_next(AVClass*, AVClass*) : AVClass*
  fun av_opt_set(Void*, LibC::Char*, LibC::Char*, LibC::Int) : LibC::Int
  fun av_opt_set_int(Void*, LibC::Char*, Int64T, LibC::Int) : LibC::Int
  fun av_opt_set_double(Void*, LibC::Char*, LibC::Double, LibC::Int) : LibC::Int
  fun av_opt_set_q(Void*, LibC::Char*, AVRational, LibC::Int) : LibC::Int
  fun av_opt_set_bin(Void*, LibC::Char*, Uint8T*, LibC::Int, LibC::Int) : LibC::Int
  fun av_opt_set_image_size(Void*, LibC::Char*, LibC::Int, LibC::Int, LibC::Int) : LibC::Int
  fun av_opt_set_pixel_fmt(Void*, LibC::Char*, AVPixelFormat, LibC::Int) : LibC::Int
  fun av_opt_set_sample_fmt(Void*, LibC::Char*, AVSampleFormat, LibC::Int) : LibC::Int
  fun av_opt_set_video_rate(Void*, LibC::Char*, AVRational, LibC::Int) : LibC::Int
  fun av_opt_set_channel_layout(Void*, LibC::Char*, Int64T, LibC::Int) : LibC::Int
  fun av_opt_set_dict_val(Void*, LibC::Char*, AVDictionary*, LibC::Int) : LibC::Int
  fun av_opt_get(Void*, LibC::Char*, LibC::Int, UInt8**) : LibC::Int
  fun av_opt_get_int(Void*, LibC::Char*, LibC::Int, Int64T*) : LibC::Int
  fun av_opt_get_double(Void*, LibC::Char*, LibC::Int, LibC::Double*) : LibC::Int
  fun av_opt_get_q(Void*, LibC::Char*, LibC::Int, AVRational*) : LibC::Int
  fun av_opt_get_image_size(Void*, LibC::Char*, LibC::Int, LibC::Int*, LibC::Int*) : LibC::Int
  fun av_opt_get_pixel_fmt(Void*, LibC::Char*, LibC::Int, AVPixelFormat*) : LibC::Int
  fun av_opt_get_sample_fmt(Void*, LibC::Char*, LibC::Int, AVSampleFormat*) : LibC::Int
  fun av_opt_get_video_rate(Void*, LibC::Char*, LibC::Int, AVRational*) : LibC::Int
  fun av_opt_get_channel_layout(Void*, LibC::Char*, LibC::Int, Int64T*) : LibC::Int
  fun av_opt_get_dict_val(Void*, LibC::Char*, LibC::Int, AVDictionary**) : LibC::Int
  fun av_opt_ptr(AVClass*, Void*, LibC::Char*) : Void*
  fun av_opt_freep_ranges(AVOptionRanges**) : Void
  fun av_opt_query_ranges(AVOptionRanges**, Void*, LibC::Char*, LibC::Int) : LibC::Int
  fun av_opt_copy(Void*, Void*) : LibC::Int
  fun av_opt_query_ranges_default(AVOptionRanges**, Void*, LibC::Char*, LibC::Int) : LibC::Int
  fun av_opt_is_set_to_default(Void*, AVOption*) : LibC::Int
  fun av_opt_is_set_to_default_by_name(Void*, LibC::Char*, LibC::Int) : LibC::Int
  fun av_opt_serialize(Void*, LibC::Int, LibC::Int, LibC::Char**, LibC::Char, LibC::Char) : LibC::Int
end
end
