require "./dict"
require "./buffer"
require "./pixfmt"
module AV
  lib LibAVUtil
    AV_NUM_DATA_POINTERS              = 8
    AV_FRAME_FLAG_CORRUPT             = 1 << 0
    AV_FRAME_FLAG_DISCARD             = 1 << 2
    FF_DECODE_ERROR_INVALID_BITSTREAM = 1
    FF_DECODE_ERROR_MISSING_REFERENCE = 2
    enum FrameSideDataType : LibC::UInt
      PANSCAN                    =  0
      A53_CC                     =  1
      STEREO3D                   =  2
      MATRIXENCODING             =  3
      DOWNMIX_INFO               =  4
      REPLAYGAIN                 =  5
      DISPLAYMATRIX              =  6
      AFD                        =  7
      MOTION_VECTORS             =  8
      SKIP_SAMPLES               =  9
      AUDIO_SERVICE_TYPE         = 10
      MASTERING_DISPLAY_METADATA = 11
      GOP_TIMECODE               = 12
      SPHERICAL                  = 13
      CONTENT_LIGHT_LEVEL        = 14
      ICC_PROFILE                = 15
    end
    enum ActiveFormatDescription : LibC::UInt
      AFD_SAME         =  8
      AFD_4_3          =  9
      AFD_16_9         = 10
      AFD_14_9         = 11
      AFD_4_3_SP_14_9  = 13
      AFD_16_9_SP_14_9 = 14
      AFD_SP_4_3       = 15
    end

    struct FrameSideData
      type : FrameSideDataType
      data : UInt8*
      size : LibC::Int
      metadata : Dictionary*
      buf : BufferRef*
    end

    struct Frame
      data : StaticArray(UInt8*, 8)
      linesize : StaticArray(LibC::Int, 8)
      extended_data : UInt8**
      width : LibC::Int
      height : LibC::Int
      nb_samples : LibC::Int
      format : LibC::Int
      key_frame : LibC::Int
      pict_type : PictureType
      sample_aspect_ratio : Rational
      pts : Int64
      pkt_pts : Int64
      pkt_dts : Int64
      coded_picture_number : LibC::Int
      display_picture_number : LibC::Int
      quality : LibC::Int
      opaque : Void*
      error : StaticArray(UInt64, 8)
      repeat_pict : LibC::Int
      interlaced_frame : LibC::Int
      top_field_first : LibC::Int
      palette_has_changed : LibC::Int
      reordered_opaque : Int64
      sample_rate : LibC::Int
      channel_layout : UInt64
      buf : StaticArray(BufferRef*, 8)
      extended_buf : BufferRef**
      nb_extended_buf : LibC::Int
      side_data : FrameSideData**
      nb_side_data : LibC::Int
      flags : LibC::Int
      color_range : ColorRange
      color_primaries : ColorPrimaries
      color_trc : ColorTransferCharacteristic
      colorspace : ColorSpace
      chroma_location : ChromaLocation
      best_effort_timestamp : Int64
      pkt_pos : Int64
      pkt_duration : Int64
      metadata : Dictionary*
      decode_error_flags : LibC::Int
      channels : LibC::Int
      pkt_size : LibC::Int
      qscale_table : Int8*
      qstride : LibC::Int
      qscale_type : LibC::Int
      qp_table_buf : BufferRef*
      hw_frames_ctx : BufferRef*
      opaque_ref : BufferRef*
      crop_top : LibC::SizeT
      crop_bottom : LibC::SizeT
      crop_left : LibC::SizeT
      crop_right : LibC::SizeT
    end

    fun frame_get_best_effort_timestamp = av_frame_get_best_effort_timestamp(Frame*) : Int64
    fun frame_set_best_effort_timestamp = av_frame_set_best_effort_timestamp(Frame*, Int64) : Void
    fun frame_get_pkt_duration = av_frame_get_pkt_duration(Frame*) : Int64
    fun frame_set_pkt_duration = av_frame_set_pkt_duration(Frame*, Int64) : Void
    fun frame_get_pkt_pos = av_frame_get_pkt_pos(Frame*) : Int64
    fun frame_set_pkt_pos = av_frame_set_pkt_pos(Frame*, Int64) : Void
    fun frame_get_channel_layout = av_frame_get_channel_layout(Frame*) : Int64
    fun frame_set_channel_layout = av_frame_set_channel_layout(Frame*, Int64) : Void
    fun frame_get_channels = av_frame_get_channels(Frame*) : LibC::Int
    fun frame_set_channels = av_frame_set_channels(Frame*, LibC::Int) : Void
    fun frame_get_sample_rate = av_frame_get_sample_rate(Frame*) : LibC::Int
    fun frame_set_sample_rate = av_frame_set_sample_rate(Frame*, LibC::Int) : Void
    fun frame_get_metadata = av_frame_get_metadata(Frame*) : Dictionary*
    fun frame_set_metadata = av_frame_set_metadata(Frame*, Dictionary*) : Void
    fun frame_get_decode_error_flags = av_frame_get_decode_error_flags(Frame*) : LibC::Int
    fun frame_set_decode_error_flags = av_frame_set_decode_error_flags(Frame*, LibC::Int) : Void
    fun frame_get_pkt_size = av_frame_get_pkt_size(Frame*) : LibC::Int
    fun frame_set_pkt_size = av_frame_set_pkt_size(Frame*, LibC::Int) : Void
    fun avpriv_frame_get_metadatap(Frame*) : Dictionary**
    fun frame_get_qp_table = av_frame_get_qp_table(Frame*, LibC::Int*, LibC::Int*) : Int8*
    fun frame_set_qp_table = av_frame_set_qp_table(Frame*, BufferRef*, LibC::Int, LibC::Int) : LibC::Int
    fun frame_get_colorspace = av_frame_get_colorspace(Frame*) : ColorSpace
    fun frame_set_colorspace = av_frame_set_colorspace(Frame*, ColorSpace) : Void
    fun frame_get_color_range = av_frame_get_color_range(Frame*) : ColorRange
    fun frame_set_color_range = av_frame_set_color_range(Frame*, ColorRange) : Void
    fun get_colorspace_name = av_get_colorspace_name(ColorSpace) : LibC::Char*
    fun frame_alloc = av_frame_alloc : Frame*
    fun frame_free = av_frame_free(Frame**) : Void
    fun frame_ref = av_frame_ref(Frame*, Frame*) : LibC::Int
    fun frame_clone = av_frame_clone(Frame*) : Frame*
    fun frame_unref = av_frame_unref(Frame*) : Void
    fun frame_move_ref = av_frame_move_ref(Frame*, Frame*) : Void
    fun frame_get_buffer = av_frame_get_buffer(Frame*, LibC::Int) : LibC::Int
    fun frame_is_writable = av_frame_is_writable(Frame*) : LibC::Int
    fun frame_make_writable = av_frame_make_writable(Frame*) : LibC::Int
    fun frame_copy = av_frame_copy(Frame*, Frame*) : LibC::Int
    fun frame_copy_props = av_frame_copy_props(Frame*, Frame*) : LibC::Int
    fun frame_get_plane_buffer = av_frame_get_plane_buffer(Frame*, LibC::Int) : BufferRef*
    fun frame_new_side_data = av_frame_new_side_data(Frame*, FrameSideDataType, LibC::Int) : FrameSideData*
    fun frame_get_side_data = av_frame_get_side_data(Frame*, FrameSideDataType) : FrameSideData*
    fun frame_remove_side_data = av_frame_remove_side_data(Frame*, FrameSideDataType) : Void
    fun frame_apply_cropping = av_frame_apply_cropping(Frame*, LibC::Int) : LibC::Int
    fun frame_side_data_name = av_frame_side_data_name(FrameSideDataType) : LibC::Char*
  end
end
