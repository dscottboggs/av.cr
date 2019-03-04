require "./log"
require "./buffer"
require "./dict"
require "./frame"
require "./pixfmt"
module AV
  lib LibAVUtil
    enum HWDeviceType : LibC::UInt
      VDPAU        = 0
      CUDA         = 1
      VAAPI        = 2
      DXVA2        = 3
      QSV          = 4
      VIDEOTOOLBOX = 5
      NONE         = 6
      D3D11VA      = 7
      DRM          = 8
    end
    type HWDeviceInternal = Void

    struct HWDeviceContext
      av_class : Class*
      internal : HWDeviceInternal*
      type : HWDeviceType
      hwctx : Void*
      free : (HWDeviceContext*) -> Void*
      user_opaque : Void*
    end

    type HWFramesInternal = Void

    struct HWFramesContext
      av_class : Class*
      internal : HWFramesInternal*
      device_ref : BufferRef*
      device_ctx : HWDeviceContext*
      hwctx : Void*
      free : (HWFramesContext*) -> Void*
      user_opaque : Void*
      pool : BufferPool*
      initial_pool_size : LibC::Int
      format : PixelFormat
      sw_format : PixelFormat
      width : LibC::Int
      height : LibC::Int
    end

    fun hwdevice_find_type_by_name = av_hwdevice_find_type_by_name(LibC::Char*) : HWDeviceType
    fun hwdevice_get_type_name = av_hwdevice_get_type_name(HWDeviceType) : LibC::Char*
    fun hwdevice_iterate_types = av_hwdevice_iterate_types(HWDeviceType) : HWDeviceType
    fun hwdevice_ctx_alloc = av_hwdevice_ctx_alloc(HWDeviceType) : BufferRef*
    fun hwdevice_ctx_init = av_hwdevice_ctx_init(BufferRef*) : LibC::Int
    fun hwdevice_ctx_create = av_hwdevice_ctx_create(BufferRef**, HWDeviceType, LibC::Char*, Dictionary*, LibC::Int) : LibC::Int
    fun hwdevice_ctx_create_derived = av_hwdevice_ctx_create_derived(BufferRef**, HWDeviceType, BufferRef*, LibC::Int) : LibC::Int
    fun hwframe_ctx_alloc = av_hwframe_ctx_alloc(BufferRef*) : BufferRef*
    fun hwframe_ctx_init = av_hwframe_ctx_init(BufferRef*) : LibC::Int
    fun hwframe_get_buffer = av_hwframe_get_buffer(BufferRef*, Frame*, LibC::Int) : LibC::Int
    fun hwframe_transfer_data = av_hwframe_transfer_data(Frame*, Frame*, LibC::Int) : LibC::Int
    enum HWFrameTransferDirection : LibC::UInt
      FROM = 0
      TO   = 1
    end
    fun hwframe_transfer_get_formats = av_hwframe_transfer_get_formats(BufferRef*, HWFrameTransferDirection, PixelFormat**, LibC::Int) : LibC::Int

    struct HWFramesConstraints
      valid_hw_formats : PixelFormat*
      valid_sw_formats : PixelFormat*
      min_width : LibC::Int
      min_height : LibC::Int
      max_width : LibC::Int
      max_height : LibC::Int
    end

    fun hwdevice_hwconfig_alloc = av_hwdevice_hwconfig_alloc(BufferRef*) : Void*
    fun hwdevice_get_hwframe_constraints = av_hwdevice_get_hwframe_constraints(BufferRef*, Void*) : HWFramesConstraints*
    fun hwframe_constraints_free = av_hwframe_constraints_free(HWFramesConstraints**) : Void
    fun hwframe_map = av_hwframe_map(Frame*, Frame*, LibC::Int) : LibC::Int
    fun hwframe_ctx_create_derived = av_hwframe_ctx_create_derived(BufferRef**, PixelFormat, BufferRef*, BufferRef*, LibC::Int) : LibC::Int
  end
end
