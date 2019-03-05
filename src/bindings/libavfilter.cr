require "./libavutil/avutil"
require "./libavutil/log"
module AV
  @[Link("avfilter")]
  lib LibAVFilter
    #   AVFILTER_AVFILTER_H =
    AVFILTER_FLAG_DYNAMIC_INPUTS            = 1 << 0
    AVFILTER_FLAG_DYNAMIC_OUTPUTS           = 1 << 1
    AVFILTER_FLAG_SLICE_THREADS             = 1 << 2
    AVFILTER_FLAG_SUPPORT_TIMELINE_GENERIC  = 1 << 16
    AVFILTER_FLAG_SUPPORT_TIMELINE_INTERNAL = 1 << 17
    AVFILTER_FLAG_SUPPORT_TIMELINE          = AVFILTER_FLAG_SUPPORT_TIMELINE_GENERIC | AVFILTER_FLAG_SUPPORT_TIMELINE_INTERNAL
    AVFILTER_THREAD_SLICE                   = 1 << 0
    AVFILTER_CMD_FLAG_ONE                   = 1
    AVFILTER_CMD_FLAG_FAST                  = 2
    fun version = avfilter_version : LibC::UInt
    fun configuration = avfilter_configuration : LibC::Char*
    fun license = avfilter_license : LibC::Char*
    # type FilterContext = Void
    # type FilterLink = Void
    type FilterPad = Void
    type FilterFormats = Void
    fun pad_count = avfilter_pad_count(FilterPad*) : LibC::Int
    fun pad_get_name = avfilter_pad_get_name(FilterPad*, LibC::Int) : LibC::Char*
    fun pad_get_type = avfilter_pad_get_type(FilterPad*, LibC::Int) : LibAVUtil::MediaType

    struct Filter
      name : LibC::Char*
      description : LibC::Char*
      inputs : FilterPad*
      outputs : FilterPad*
      priv_class : LibAVUtil::Class*
      flags : LibC::Int
      preinit : (FilterContext*) -> LibC::Int*
      init : (FilterContext*) -> LibC::Int*
      init_dict : (FilterContext*, LibAVUtil::Dictionary**) -> LibC::Int*
      uninit : (FilterContext*) -> Void*
      query_formats : (FilterContext*) -> LibC::Int*
      priv_size : LibC::Int
      flags_internal : LibC::Int
      next : Filter*
      process_command : (FilterContext*, LibC::Char*, LibC::Char*, LibC::Char*, LibC::Int, LibC::Int) -> LibC::Int*
      init_opaque : (FilterContext*, Void*) -> LibC::Int*
      activate : (FilterContext*) -> LibC::Int*
    end

    type FilterInternal = Void

    struct FilterContext
      av_class : LibAVUtil::Class*
      filter : Filter*
      name : LibC::Char*
      input_pads : FilterPad*
      inputs : FilterLink**
      nb_inputs : LibC::UInt
      output_pads : FilterPad*
      outputs : FilterLink**
      nb_outputs : LibC::UInt
      priv : Void*
      graph : FilterGraph*
      thread_type : LibC::Int
      internal : FilterInternal*
      # command_queue : FilterCommand*
      enable_str : LibC::Char*
      enable : Void*
      var_values : LibC::Double*
      is_disabled : LibC::Int
      hw_device_ctx : LibAVUtil::BufferRef*
      nb_threads : LibC::Int
      ready : LibC::UInt
    end

    enum FilterLinkInitState
      UNINIT    = 0 # < Not started
      STARTINIT     # < Started, but incomplete
      INIT          # < complete
    end

    type FilterChannelLayouts = Void

    struct FilterLink
      src : FilterContext*
      srcpad : FilterPad*
      dst : FilterContext*
      dstpad : FilterPad*
      type : LibAVUtil::MediaType
      w : LibC::Int
      h : LibC::Int
      sample_aspect_ratio : LibAVUtil::Rational
      channel_layout : UInt64
      sample_rate : LibC::Int
      format : LibC::Int
      time_base : LibAVUtil::Rational
      in_formats : FilterFormats*
      out_formats : FilterFormats*
      in_samplerates : FilterFormats*
      out_samplerates : FilterFormats*
      in_channel_layouts : FilterChannelLayouts*
      out_channel_layouts : FilterChannelLayouts*
      request_samples : LibC::Int
      init_state : FilterLinkInitState
      graph : FilterGraph*
      current_pts : Int64
      current_pts_us : Int64
      age_index : LibC::Int
      frame_rate : LibAVUtil::Rational
      partial_buf : LibAVUtil::Frame*
      partial_buf_size : LibC::Int
      min_samples : LibC::Int
      max_samples : LibC::Int
      channels : LibC::Int
      flags : LibC::UInt
      frame_count_in : Int64
      frame_count_out : Int64
      frame_pool : Void*
      frame_wanted_out : LibC::Int
      hw_frames_ctx : LibAVUtil::BufferRef*
      reserved : StaticArray(LibC::Char, 61440)
    end

    fun link = avfilter_link(FilterContext*, LibC::UInt, FilterContext*, LibC::UInt) : LibC::Int
    fun link_free = avfilter_link_free(FilterLink**) : Void
    fun link_get_channels = avfilter_link_get_channels(FilterLink*) : LibC::Int
    fun link_set_closed = avfilter_link_set_closed(FilterLink*, LibC::Int) : Void
    fun config_links = avfilter_config_links(FilterContext*) : LibC::Int
    fun process_command = avfilter_process_command(FilterContext*, LibC::Char*, LibC::Char*, LibC::Char*, LibC::Int, LibC::Int) : LibC::Int
    fun register_all = avfilter_register_all : Void
    fun uninit = avfilter_uninit : Void
    fun register = avfilter_register(Filter*) : LibC::Int
    fun get_by_name = avfilter_get_by_name(LibC::Char*) : Filter*
    fun next = avfilter_next(Filter*) : Filter*
    fun next_filter = av_filter_next(Filter**) : Filter**
    fun open = avfilter_open(FilterContext**, Filter*, LibC::Char*) : LibC::Int
    fun init_filter = avfilter_init_filter(FilterContext*, LibC::Char*, Void*) : LibC::Int
    fun init_str = avfilter_init_str(FilterContext*, LibC::Char*) : LibC::Int
    fun init_dict = avfilter_init_dict(FilterContext*, LibAVUtil::Dictionary**) : LibC::Int
    fun free = avfilter_free(FilterContext*) : Void
    fun insert_filter = avfilter_insert_filter(FilterLink*, FilterContext*, LibC::UInt, LibC::UInt) : LibC::Int
    fun get_class = avfilter_get_class : LibAVUtil::Class*
    type FilterGraphInternal = Void
    alias AvfilterActionFunc = (FilterContext*, Void*, LibC::Int, LibC::Int) -> Void
    alias AvfilterExecuteFunc = (FilterContext*, AvfilterActionFunc*, Void*, LibC::Int*, LibC::Int) -> Void

    struct FilterGraph
      av_class : LibAVUtil::Class*
      filters : FilterContext**
      nb_filters : LibC::UInt
      scale_sws_opts : LibC::Char*
      resample_lavr_opts : LibC::Char*
      thread_type : LibC::Int
      nb_threads : LibC::Int
      internal : FilterGraphInternal*
      opaque : Void*
      execute : AvfilterExecuteFunc*
      aresample_swr_opts : LibC::Char*
      sink_links : FilterLink**
      sink_links_count : LibC::Int
      disable_auto_convert : LibC::UInt
    end

    fun graph_alloc = avfilter_graph_alloc : FilterGraph*
    fun graph_alloc_filter = avfilter_graph_alloc_filter(FilterGraph*, Filter*, LibC::Char*) : FilterContext*
    fun graph_get_filter = avfilter_graph_get_filter(FilterGraph*, LibC::Char*) : FilterContext*
    fun graph_add_filter = avfilter_graph_add_filter(FilterGraph*, FilterContext*) : LibC::Int
    fun graph_create_filter = avfilter_graph_create_filter(FilterContext**, Filter*, LibC::Char*, LibC::Char*, Void*, FilterGraph*) : LibC::Int
    fun graph_set_auto_convert = avfilter_graph_set_auto_convert(FilterGraph*, LibC::UInt) : Void
    fun graph_config = avfilter_graph_config(FilterGraph*, Void*) : LibC::Int
    fun graph_free = avfilter_graph_free(FilterGraph**) : Void

    struct FilterInOut
      name : LibC::Char*
      filter_ctx : FilterContext*
      pad_idx : LibC::Int
      next : FilterInOut*
    end

    fun inout_alloc = avfilter_inout_alloc : FilterInOut*
    fun inout_free = avfilter_inout_free(FilterInOut**) : Void
    fun graph_parse = avfilter_graph_parse(FilterGraph*, LibC::Char*, FilterInOut*, FilterInOut*, Void*) : LibC::Int
    fun graph_parse_ptr = avfilter_graph_parse_ptr(FilterGraph*, LibC::Char*, FilterInOut**, FilterInOut**, Void*) : LibC::Int
    fun graph_parse2 = avfilter_graph_parse2(FilterGraph*, LibC::Char*, FilterInOut**, FilterInOut**) : LibC::Int
    fun graph_send_command = avfilter_graph_send_command(FilterGraph*, LibC::Char*, LibC::Char*, LibC::Char*, LibC::Char*, LibC::Int, LibC::Int) : LibC::Int
    fun graph_queue_command = avfilter_graph_queue_command(FilterGraph*, LibC::Char*, LibC::Char*, LibC::Char*, LibC::Int, LibC::Double) : LibC::Int
    fun graph_dump = avfilter_graph_dump(FilterGraph*, LibC::Char*) : LibC::Char*
    fun graph_request_oldest = avfilter_graph_request_oldest(FilterGraph*) : LibC::Int
  end
end
