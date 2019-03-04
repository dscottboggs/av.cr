module AV
  lib LibAVUtil
    #   AVUTIL_PIXDESC_H =
    AV_PIX_FMT_FLAG_BE        = 1 << 0
    AV_PIX_FMT_FLAG_PAL       = 1 << 1
    AV_PIX_FMT_FLAG_BITSTREAM = 1 << 2
    AV_PIX_FMT_FLAG_HWACCEL   = 1 << 3
    AV_PIX_FMT_FLAG_PLANAR    = 1 << 4
    AV_PIX_FMT_FLAG_RGB       = 1 << 5
    AV_PIX_FMT_FLAG_PSEUDOPAL = 1 << 6
    AV_PIX_FMT_FLAG_ALPHA     = 1 << 7
    AV_PIX_FMT_FLAG_BAYER     = 1 << 8
    AV_PIX_FMT_FLAG_FLOAT     = 1 << 9
    FF_LOSS_RESOLUTION        = 0x0001
    FF_LOSS_DEPTH             = 0x0002
    FF_LOSS_COLORSPACE        = 0x0004
    FF_LOSS_ALPHA             = 0x0008
    FF_LOSS_COLORQUANT        = 0x0010
    FF_LOSS_CHROMA            = 0x0020

    struct AVComponentDescriptor
      plane : LibC::Int
      step : LibC::Int
      offset : LibC::Int
      shift : LibC::Int
      depth : LibC::Int
      step_minus1 : LibC::Int
      depth_minus1 : LibC::Int
      offset_plus1 : LibC::Int
    end

    struct AVPixFmtDescriptor
      name : LibC::Char*
      nb_components : UInt8
      log2_chroma_w : UInt8
      log2_chroma_h : UInt8
      flags : UInt64
      comp : StaticArray(AVComponentDescriptor, 4)
      alias : LibC::Char*
    end

    fun av_get_bits_per_pixel(AVPixFmtDescriptor*) : LibC::Int
    fun av_get_padded_bits_per_pixel(AVPixFmtDescriptor*) : LibC::Int
    fun av_pix_fmt_desc_get(AVPixelFormat) : AVPixFmtDescriptor*
    fun av_pix_fmt_desc_next(AVPixFmtDescriptor*) : AVPixFmtDescriptor*
    fun av_pix_fmt_desc_get_id(AVPixFmtDescriptor*) : AVPixelFormat
    fun av_pix_fmt_get_chroma_sub_sample(AVPixelFormat, LibC::Int*, LibC::Int*) : LibC::Int
    fun av_pix_fmt_count_planes(AVPixelFormat) : LibC::Int
    fun av_color_range_name(AVColorRange) : LibC::Char*
    fun av_color_range_from_name(LibC::Char*) : LibC::Int
    fun av_color_primaries_name(AVColorPrimaries) : LibC::Char*
    fun av_color_primaries_from_name(LibC::Char*) : LibC::Int
    fun av_color_transfer_name(AVColorTransferCharacteristic) : LibC::Char*
    fun av_color_transfer_from_name(LibC::Char*) : LibC::Int
    fun av_color_space_name(AVColorSpace) : LibC::Char*
    fun av_color_space_from_name(LibC::Char*) : LibC::Int
    fun av_chroma_location_name(AVChromaLocation) : LibC::Char*
    fun av_chroma_location_from_name(LibC::Char*) : LibC::Int
    fun av_get_pix_fmt(LibC::Char*) : AVPixelFormat
    fun av_get_pix_fmt_name(AVPixelFormat) : LibC::Char*
    fun av_get_pix_fmt_string(LibC::Char*, LibC::Int, AVPixelFormat) : LibC::Char*
    fun av_read_image_line(UInt16*, StaticArray(Uint8T*, 4), StaticArray(LibC::Int, 4), AVPixFmtDescriptor*, LibC::Int, LibC::Int, LibC::Int, LibC::Int, LibC::Int) : Void
    fun av_write_image_line(Uint16T*, StaticArray(UInt8*, 4), StaticArray(LibC::Int, 4), AVPixFmtDescriptor*, LibC::Int, LibC::Int, LibC::Int, LibC::Int) : Void
    fun av_pix_fmt_swap_endianness(AVPixelFormat) : AVPixelFormat
    fun av_get_pix_fmt_loss(AVPixelFormat, AVPixelFormat, LibC::Int) : LibC::Int
    fun av_find_best_pix_fmt_of_2(AVPixelFormat, AVPixelFormat, AVPixelFormat, LibC::Int, LibC::Int*) : AVPixelFormat
  end
end
