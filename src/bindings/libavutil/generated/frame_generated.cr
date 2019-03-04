module AV
  lib LibAVUtil
    #   AVUTIL_FRAME_H =
    AV_NUM_DATA_POINTERS              = 8
    AV_FRAME_FLAG_CORRUPT             = 1 << 0
    AV_FRAME_FLAG_DISCARD             = 1 << 2
    FF_DECODE_ERROR_INVALID_BITSTREAM = 1
    FF_DECODE_ERROR_MISSING_REFERENCE = 2
    enum AVFrameSideDataType : LibC::UInt
      AV_FRAME_DATA_PANSCAN                    =  0
      AV_FRAME_DATA_A53_CC                     =  1
      AV_FRAME_DATA_STEREO3D                   =  2
      AV_FRAME_DATA_MATRIXENCODING             =  3
      AV_FRAME_DATA_DOWNMIX_INFO               =  4
      AV_FRAME_DATA_REPLAYGAIN                 =  5
      AV_FRAME_DATA_DISPLAYMATRIX              =  6
      AV_FRAME_DATA_AFD                        =  7
      AV_FRAME_DATA_MOTION_VECTORS             =  8
      AV_FRAME_DATA_SKIP_SAMPLES               =  9
      AV_FRAME_DATA_AUDIO_SERVICE_TYPE         = 10
      AV_FRAME_DATA_MASTERING_DISPLAY_METADATA = 11
      AV_FRAME_DATA_GOP_TIMECODE               = 12
      AV_FRAME_DATA_SPHERICAL                  = 13
      AV_FRAME_DATA_CONTENT_LIGHT_LEVEL        = 14
      AV_FRAME_DATA_ICC_PROFILE                = 15
    end
    enum AVActiveFormatDescription : LibC::UInt
      AV_AFD_SAME         =  8
      AV_AFD_4_3          =  9
      AV_AFD_16_9         = 10
      AV_AFD_14_9         = 11
      AV_AFD_4_3_SP_14_9  = 13
      AV_AFD_16_9_SP_14_9 = 14
      AV_AFD_SP_4_3       = 15
    end

    struct AVFrameSideData
      type : AVFrameSideDataType
      data : UInt8*
      size : LibC::Int
      metadata : AVDictionary*
      buf : AVBufferRef*
    end

    struct AVFrame
      data : StaticArray(UInt8*, 8)
      linesize : StaticArray(LibC::Int, 8)
      extended_data : UInt8**
      width : LibC::Int
      height : LibC::Int
      nb_samples : LibC::Int
      format : LibC::Int
      key_frame : LibC::Int
      pict_type : AVPictureType
      sample_aspect_ratio : AVRational
      pts : Int64T
      pkt_pts : Int64T
      pkt_dts : Int64T
      coded_picture_number : LibC::Int
      display_picture_number : LibC::Int
      quality : LibC::Int
      opaque : Void*
      error : StaticArray(UInt64, 8)
      repeat_pict : LibC::Int
      interlaced_frame : LibC::Int
      top_field_first : LibC::Int
      palette_has_changed : LibC::Int
      reordered_opaque : Int64T
      sample_rate : LibC::Int
      channel_layout : UInt64
      buf : StaticArray(AVBufferRef*, 8)
      extended_buf : AVBufferRef**
      nb_extended_buf : LibC::Int
      side_data : AVFrameSideData**
      nb_side_data : LibC::Int
      flags : LibC::Int
      color_range : AVColorRange
      color_primaries : AVColorPrimaries
      color_trc : AVColorTransferCharacteristic
      colorspace : AVColorSpace
      chroma_location : AVChromaLocation
      best_effort_timestamp : Int64T
      pkt_pos : Int64T
      pkt_duration : Int64T
      metadata : AVDictionary*
      decode_error_flags : LibC::Int
      channels : LibC::Int
      pkt_size : LibC::Int
      qscale_table : Int8T*
      qstride : LibC::Int
      qscale_type : LibC::Int
      qp_table_buf : AVBufferRef*
      hw_frames_ctx : AVBufferRef*
      opaque_ref : AVBufferRef*
      crop_top : SizeT
      crop_bottom : SizeT
      crop_left : SizeT
      crop_right : SizeT
    end

    fun av_frame_get_best_effort_timestamp(AVFrame*) : Int64T
    fun av_frame_set_best_effort_timestamp(AVFrame*, Int64T) : Void
    fun av_frame_get_pkt_duration(AVFrame*) : Int64T
    fun av_frame_set_pkt_duration(AVFrame*, Int64T) : Void
    fun av_frame_get_pkt_pos(AVFrame*) : Int64T
    fun av_frame_set_pkt_pos(AVFrame*, Int64T) : Void
    fun av_frame_get_channel_layout(AVFrame*) : Int64T
    fun av_frame_set_channel_layout(AVFrame*, Int64T) : Void
    fun av_frame_get_channels(AVFrame*) : LibC::Int
    fun av_frame_set_channels(AVFrame*, LibC::Int) : Void
    fun av_frame_get_sample_rate(AVFrame*) : LibC::Int
    fun av_frame_set_sample_rate(AVFrame*, LibC::Int) : Void
    fun av_frame_get_metadata(AVFrame*) : AVDictionary*
    fun av_frame_set_metadata(AVFrame*, AVDictionary*) : Void
    fun av_frame_get_decode_error_flags(AVFrame*) : LibC::Int
    fun av_frame_set_decode_error_flags(AVFrame*, LibC::Int) : Void
    fun av_frame_get_pkt_size(AVFrame*) : LibC::Int
    fun av_frame_set_pkt_size(AVFrame*, LibC::Int) : Void
    fun avpriv_frame_get_metadatap(AVFrame*) : AVDictionary**
    fun av_frame_get_qp_table(AVFrame*, LibC::Int*, LibC::Int*) : Int8T*
    fun av_frame_set_qp_table(AVFrame*, AVBufferRef*, LibC::Int, LibC::Int) : LibC::Int
    fun av_frame_get_colorspace(AVFrame*) : AVColorSpace
    fun av_frame_set_colorspace(AVFrame*, AVColorSpace) : Void
    fun av_frame_get_color_range(AVFrame*) : AVColorRange
    fun av_frame_set_color_range(AVFrame*, AVColorRange) : Void
    fun av_get_colorspace_name(AVColorSpace) : LibC::Char*
    fun av_frame_alloc : AVFrame*
    fun av_frame_free(AVFrame**) : Void
    fun av_frame_ref(AVFrame*, AVFrame*) : LibC::Int
    fun av_frame_clone(AVFrame*) : AVFrame*
    fun av_frame_unref(AVFrame*) : Void
    fun av_frame_move_ref(AVFrame*, AVFrame*) : Void
    fun av_frame_get_buffer(AVFrame*, LibC::Int) : LibC::Int
    fun av_frame_is_writable(AVFrame*) : LibC::Int
    fun av_frame_make_writable(AVFrame*) : LibC::Int
    fun av_frame_copy(AVFrame*, AVFrame*) : LibC::Int
    fun av_frame_copy_props(AVFrame*, AVFrame*) : LibC::Int
    fun av_frame_get_plane_buffer(AVFrame*, LibC::Int) : AVBufferRef*
    fun av_frame_new_side_data(AVFrame*, AVFrameSideDataType, LibC::Int) : AVFrameSideData*
    fun av_frame_get_side_data(AVFrame*, AVFrameSideDataType) : AVFrameSideData*
    fun av_frame_remove_side_data(AVFrame*, AVFrameSideDataType) : Void
    fun av_frame_apply_cropping(AVFrame*, LibC::Int) : LibC::Int
    fun av_frame_side_data_name(AVFrameSideDataType) : LibC::Char*
  end
end
