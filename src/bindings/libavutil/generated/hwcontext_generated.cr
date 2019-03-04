module AV
  lib LibAVUtil
    #   AVUTIL_HWCONTEXT_H =
    enum AVHWDeviceType : LibC::UInt
      AV_HWDEVICE_TYPE_VDPAU        = 0
      AV_HWDEVICE_TYPE_CUDA         = 1
      AV_HWDEVICE_TYPE_VAAPI        = 2
      AV_HWDEVICE_TYPE_DXVA2        = 3
      AV_HWDEVICE_TYPE_QSV          = 4
      AV_HWDEVICE_TYPE_VIDEOTOOLBOX = 5
      AV_HWDEVICE_TYPE_NONE         = 6
      AV_HWDEVICE_TYPE_D3D11VA      = 7
      AV_HWDEVICE_TYPE_DRM          = 8
    end
    type AVHWDeviceInternal = Void

    struct AVHWDeviceContext
      av_class : AVClass*
      internal : AVHWDeviceInternal*
      type : AVHWDeviceType
      hwctx : Void*
      free : (AVHWDeviceContext*) -> Void*
      user_opaque : Void*
    end

    type AVHWFramesInternal = Void

    struct AVHWFramesContext
      av_class : AVClass*
      internal : AVHWFramesInternal*
      device_ref : AVBufferRef*
      device_ctx : AVHWDeviceContext*
      hwctx : Void*
      free : (AVHWFramesContext*) -> Void*
      user_opaque : Void*
      pool : AVBufferPool*
      initial_pool_size : LibC::Int
      format : AVPixelFormat
      sw_format : AVPixelFormat
      width : LibC::Int
      height : LibC::Int
    end

    fun av_hwdevice_find_type_by_name(LibC::Char*) : AVHWDeviceType
    fun av_hwdevice_get_type_name(AVHWDeviceType) : LibC::Char*
    fun av_hwdevice_iterate_types(AVHWDeviceType) : AVHWDeviceType
    fun av_hwdevice_ctx_alloc(AVHWDeviceType) : AVBufferRef*
    fun av_hwdevice_ctx_init(AVBufferRef*) : LibC::Int
    fun av_hwdevice_ctx_create(AVBufferRef**, AVHWDeviceType, LibC::Char*, AVDictionary*, LibC::Int) : LibC::Int
    fun av_hwdevice_ctx_create_derived(AVBufferRef**, AVHWDeviceType, AVBufferRef*, LibC::Int) : LibC::Int
    fun av_hwframe_ctx_alloc(AVBufferRef*) : AVBufferRef*
    fun av_hwframe_ctx_init(AVBufferRef*) : LibC::Int
    fun av_hwframe_get_buffer(AVBufferRef*, AVFrame*, LibC::Int) : LibC::Int
    fun av_hwframe_transfer_data(AVFrame*, AVFrame*, LibC::Int) : LibC::Int
    enum AVHWFrameTransferDirection : LibC::UInt
      AV_HWFRAME_TRANSFER_DIRECTION_FROM = 0
      AV_HWFRAME_TRANSFER_DIRECTION_TO   = 1
    end
    fun av_hwframe_transfer_get_formats(AVBufferRef*, AVHWFrameTransferDirection, AVPixelFormat**, LibC::Int) : LibC::Int

    struct AVHWFramesConstraints
      valid_hw_formats : AVPixelFormat*
      valid_sw_formats : AVPixelFormat*
      min_width : LibC::Int
      min_height : LibC::Int
      max_width : LibC::Int
      max_height : LibC::Int
    end

    fun av_hwdevice_hwconfig_alloc(AVBufferRef*) : Void*
    fun av_hwdevice_get_hwframe_constraints(AVBufferRef*, Void*) : AVHWFramesConstraints*
    fun av_hwframe_constraints_free(AVHWFramesConstraints**) : Void
    fun av_hwframe_map(AVFrame*, AVFrame*, LibC::Int) : LibC::Int
    fun av_hwframe_ctx_create_derived(AVBufferRef**, AVPixelFormat, AVBufferRef*, AVBufferRef*, LibC::Int) : LibC::Int
  end
end
