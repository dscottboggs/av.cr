require "./pixfmt"
module AV
  lib Lib
    @[Flags]
    enum PixFmtFlags
      BE        = 1 << 0
      PAL       = 1 << 1
      BITSTREAM = 1 << 2
      HWACCEL   = 1 << 3
      PLANAR    = 1 << 4
      RGB       = 1 << 5
      PSEUDOPAL = 1 << 6
      ALPHA     = 1 << 7
      BAYER     = 1 << 8
      FLOAT     = 1 << 9
    end
    FF_LOSS_RESOLUTION        = 0x0001
    FF_LOSS_DEPTH             = 0x0002
    FF_LOSS_COLORSPACE        = 0x0004
    FF_LOSS_ALPHA             = 0x0008
    FF_LOSS_COLORQUANT        = 0x0010
    FF_LOSS_CHROMA            = 0x0020

    struct ComponentDescriptor
      plane : LibC::Int
      step : LibC::Int
      offset : LibC::Int
      shift : LibC::Int
      depth : LibC::Int
      step_minus1 : LibC::Int
      depth_minus1 : LibC::Int
      offset_plus1 : LibC::Int
    end

    struct PixFmtDescriptor
      name : LibC::Char*
      nb_components : UInt8
      log2_chroma_w : UInt8
      log2_chroma_h : UInt8
      flags : UInt64
      comp : StaticArray(ComponentDescriptor, 4)
      alias : LibC::Char*
    end

    fun get_bits_per_pixel = av_get_bits_per_pixel(PixFmtDescriptor*) : LibC::Int
    fun get_padded_bits_per_pixel = av_get_padded_bits_per_pixel(PixFmtDescriptor*) : LibC::Int
    fun pix_fmt_desc_get = av_pix_fmt_desc_get(PixelFormat) : PixFmtDescriptor*
    fun pix_fmt_desc_next = av_pix_fmt_desc_next(PixFmtDescriptor*) : PixFmtDescriptor*
    fun pix_fmt_desc_get_id = av_pix_fmt_desc_get_id(PixFmtDescriptor*) : PixelFormat
    fun pix_fmt_get_chroma_sub_sample = av_pix_fmt_get_chroma_sub_sample(PixelFormat, LibC::Int*, LibC::Int*) : LibC::Int
    fun pix_fmt_count_planes = av_pix_fmt_count_planes(PixelFormat) : LibC::Int
    fun color_range_name = av_color_range_name(ColorRange) : LibC::Char*
    fun color_range_from_name = av_color_range_from_name(LibC::Char*) : LibC::Int
    fun color_primaries_name = av_color_primaries_name(ColorPrimaries) : LibC::Char*
    fun color_primaries_from_name = av_color_primaries_from_name(LibC::Char*) : LibC::Int
    fun color_transfer_name = av_color_transfer_name(ColorTransferCharacteristic) : LibC::Char*
    fun color_transfer_from_name = av_color_transfer_from_name(LibC::Char*) : LibC::Int
    fun color_space_name = av_color_space_name(ColorSpace) : LibC::Char*
    fun color_space_from_name = av_color_space_from_name(LibC::Char*) : LibC::Int
    fun chroma_location_name = av_chroma_location_name(ChromaLocation) : LibC::Char*
    fun chroma_location_from_name = av_chroma_location_from_name(LibC::Char*) : LibC::Int
    fun get_pix_fmt = av_get_pix_fmt(LibC::Char*) : PixelFormat
    fun get_pix_fmt_name = av_get_pix_fmt_name(PixelFormat) : LibC::Char*
    fun get_pix_fmt_string = av_get_pix_fmt_string(LibC::Char*, LibC::Int, PixelFormat) : LibC::Char*
    fun read_image_line = av_read_image_line(UInt16*, StaticArray(UInt8*, 4), StaticArray(LibC::Int, 4), PixFmtDescriptor*, LibC::Int, LibC::Int, LibC::Int, LibC::Int, LibC::Int) : Void
    fun write_image_line = av_write_image_line(UInt16*, StaticArray(UInt8*, 4), StaticArray(LibC::Int, 4), PixFmtDescriptor*, LibC::Int, LibC::Int, LibC::Int, LibC::Int) : Void
    fun pix_fmt_swap_endianness = av_pix_fmt_swap_endianness(PixelFormat) : PixelFormat
    fun get_pix_fmt_loss = av_get_pix_fmt_loss(PixelFormat, PixelFormat, LibC::Int) : LibC::Int
    fun find_best_pix_fmt_of_2 = av_find_best_pix_fmt_of_2(PixelFormat, PixelFormat, PixelFormat, LibC::Int, LibC::Int*) : PixelFormat
  end
end
