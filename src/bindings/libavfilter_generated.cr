module AV
lib LibAVCodec
#   AVFILTER_AVFILTER_H = 
    AVFILTER_FLAG_DYNAMIC_INPUTS = 1<<0
    AVFILTER_FLAG_DYNAMIC_OUTPUTS = 1<<1
    AVFILTER_FLAG_SLICE_THREADS = 1<<2
    AVFILTER_FLAG_SUPPORT_TIMELINE_GENERIC = 1<<16
    AVFILTER_FLAG_SUPPORT_TIMELINE_INTERNAL = 1<<17
    AVFILTER_FLAG_SUPPORT_TIMELINE =  AVFILTER_FLAG_SUPPORT_TIMELINE_GENERIC| AVFILTER_FLAG_SUPPORT_TIMELINE_INTERNAL
    AVFILTER_THREAD_SLICE = 1<<0
    AVFILTER_CMD_FLAG_ONE = 1
    AVFILTER_CMD_FLAG_FAST = 2
  fun avfilter_version() : LibC::UInt
  fun avfilter_configuration() : LibC::Char*
  fun avfilter_license() : LibC::Char*
  type AVFilterContext = Void
  type AVFilterLink = Void
  type AVFilterPad = Void
  type AVFilterFormats = Void
  fun avfilter_pad_count(AVFilterPad*) : LibC::Int
  fun avfilter_pad_get_name(AVFilterPad*, LibC::Int) : LibC::Char*
  fun avfilter_pad_get_type(AVFilterPad*, LibC::Int) : AVMediaType
  struct AVFilter
    name : LibC::Char*
    description : LibC::Char*
    inputs : AVFilterPad*
    outputs : AVFilterPad*
    priv_class : AVClass*
    flags : LibC::Int
    preinit : (AVFilterContext*) -> LibC::Int*
    init : (AVFilterContext*) -> LibC::Int*
    init_dict : (AVFilterContext*, AVDictionary**) -> LibC::Int*
    uninit : (AVFilterContext*) -> Void*
    query_formats : (AVFilterContext*) -> LibC::Int*
    priv_size : LibC::Int
    flags_internal : LibC::Int
    next : AVFilter*
    process_command : (AVFilterContext*, LibC::Char*, LibC::Char*, LibC::Char*, LibC::Int, LibC::Int) -> LibC::Int*
    init_opaque : (AVFilterContext*, Void*) -> LibC::Int*
    activate : (AVFilterContext*) -> LibC::Int*
  end

  type AVFilterInternal = Void
  struct AVFilterContext
    av_class : AVClass*
    filter : AVFilter*
    name : LibC::Char*
    input_pads : AVFilterPad*
    inputs : AVFilterLink**
    nb_inputs : LibC::UInt
    output_pads : AVFilterPad*
    outputs : AVFilterLink**
    nb_outputs : LibC::UInt
    priv : Void*
    graph : AVFilterGraph*
    thread_type : LibC::Int
    internal : AVFilterInternal*
    command_queue : AVFilterCommand*
    enable_str : LibC::Char*
    enable : Void*
    var_values : LibC::Double*
    is_disabled : LibC::Int
    hw_device_ctx : AVBufferRef*
    nb_threads : LibC::Int
    ready : LibC::UInt
  end

  struct AVFilterLink
    src : AVFilterContext*
    srcpad : AVFilterPad*
    dst : AVFilterContext*
    dstpad : AVFilterPad*
    type : AVMediaType
    w : LibC::Int
    h : LibC::Int
    sample_aspect_ratio : AVRational
    channel_layout : UInt64
    sample_rate : LibC::Int
    format : LibC::Int
    time_base : AVRational
    in_formats : AVFilterFormats*
    out_formats : AVFilterFormats*
    in_samplerates : AVFilterFormats*
    out_samplerates : AVFilterFormats*
    in_channel_layouts : AVFilterChannelLayouts*
    out_channel_layouts : AVFilterChannelLayouts*
    request_samples : LibC::Int
    # WARNING: unexpected EnumDecl within StructDecl (visit_struct)
    init_state : Enum AVFilterLink::(anonymous at /usr/include/x8664-linux-gnu/libavfilter/avfilter.h:487:5)
    graph : AVFilterGraph*
    current_pts : Int64T
    current_pts_us : Int64T
    age_index : LibC::Int
    frame_rate : AVRational
    partial_buf : AVFrame*
    partial_buf_size : LibC::Int
    min_samples : LibC::Int
    max_samples : LibC::Int
    channels : LibC::Int
    flags : LibC::UInt
    frame_count_in : Int64T
    frame_count_out : Int64T
    frame_pool : Void*
    frame_wanted_out : LibC::Int
    hw_frames_ctx : AVBufferRef*
    reserved : StaticArray(LibC::Char, 61440)
  end

  fun avfilter_link(AVFilterContext*, LibC::UInt, AVFilterContext*, LibC::UInt) : LibC::Int
  fun avfilter_link_free(AVFilterLink**) : Void
  fun avfilter_link_get_channels(AVFilterLink*) : LibC::Int
  fun avfilter_link_set_closed(AVFilterLink*, LibC::Int) : Void
  fun avfilter_config_links(AVFilterContext*) : LibC::Int
  fun avfilter_process_command(AVFilterContext*, LibC::Char*, LibC::Char*, LibC::Char*, LibC::Int, LibC::Int) : LibC::Int
  fun avfilter_register_all() : Void
  fun avfilter_uninit() : Void
  fun avfilter_register(AVFilter*) : LibC::Int
  fun avfilter_get_by_name(LibC::Char*) : AVFilter*
  fun avfilter_next(AVFilter*) : AVFilter*
  fun av_filter_next(AVFilter**) : AVFilter**
  fun avfilter_open(AVFilterContext**, AVFilter*, LibC::Char*) : LibC::Int
  fun avfilter_init_filter(AVFilterContext*, LibC::Char*, Void*) : LibC::Int
  fun avfilter_init_str(AVFilterContext*, LibC::Char*) : LibC::Int
  fun avfilter_init_dict(AVFilterContext*, AVDictionary**) : LibC::Int
  fun avfilter_free(AVFilterContext*) : Void
  fun avfilter_insert_filter(AVFilterLink*, AVFilterContext*, LibC::UInt, LibC::UInt) : LibC::Int
  fun avfilter_get_class() : AVClass*
  type AVFilterGraphInternal = Void
  alias AvfilterActionFunc = (AVFilterContext*, Void*, LibC::Int, LibC::Int) -> Void
  alias AvfilterExecuteFunc = (AVFilterContext*, AvfilterActionFunc*, Void*, LibC::Int*, LibC::Int) -> Void
  struct AVFilterGraph
    av_class : AVClass*
    filters : AVFilterContext**
    nb_filters : LibC::UInt
    scale_sws_opts : LibC::Char*
    resample_lavr_opts : LibC::Char*
    thread_type : LibC::Int
    nb_threads : LibC::Int
    internal : AVFilterGraphInternal*
    opaque : Void*
    execute : AvfilterExecuteFunc*
    aresample_swr_opts : LibC::Char*
    sink_links : AVFilterLink**
    sink_links_count : LibC::Int
    disable_auto_convert : LibC::UInt
  end

  fun avfilter_graph_alloc() : AVFilterGraph*
  fun avfilter_graph_alloc_filter(AVFilterGraph*, AVFilter*, LibC::Char*) : AVFilterContext*
  fun avfilter_graph_get_filter(AVFilterGraph*, LibC::Char*) : AVFilterContext*
  fun avfilter_graph_add_filter(AVFilterGraph*, AVFilterContext*) : LibC::Int
  fun avfilter_graph_create_filter(AVFilterContext**, AVFilter*, LibC::Char*, LibC::Char*, Void*, AVFilterGraph*) : LibC::Int
  fun avfilter_graph_set_auto_convert(AVFilterGraph*, LibC::UInt) : Void
  fun avfilter_graph_config(AVFilterGraph*, Void*) : LibC::Int
  fun avfilter_graph_free(AVFilterGraph**) : Void
  struct AVFilterInOut
    name : LibC::Char*
    filter_ctx : AVFilterContext*
    pad_idx : LibC::Int
    next : AVFilterInOut*
  end

  fun avfilter_inout_alloc() : AVFilterInOut*
  fun avfilter_inout_free(AVFilterInOut**) : Void
  fun avfilter_graph_parse(AVFilterGraph*, LibC::Char*, AVFilterInOut*, AVFilterInOut*, Void*) : LibC::Int
  fun avfilter_graph_parse_ptr(AVFilterGraph*, LibC::Char*, AVFilterInOut**, AVFilterInOut**, Void*) : LibC::Int
  fun avfilter_graph_parse2(AVFilterGraph*, LibC::Char*, AVFilterInOut**, AVFilterInOut**) : LibC::Int
  fun avfilter_graph_send_command(AVFilterGraph*, LibC::Char*, LibC::Char*, LibC::Char*, LibC::Char*, LibC::Int, LibC::Int) : LibC::Int
  fun avfilter_graph_queue_command(AVFilterGraph*, LibC::Char*, LibC::Char*, LibC::Char*, LibC::Int, LibC::Double) : LibC::Int
  fun avfilter_graph_dump(AVFilterGraph*, LibC::Char*) : LibC::Char*
  fun avfilter_graph_request_oldest(AVFilterGraph*) : LibC::Int
end
end
