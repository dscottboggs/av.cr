module AV
  lib LibAVUtil
    fun image_fill_max_pixsteps = av_image_fill_max_pixsteps(StaticArray(LibC::Int, 4), StaticArray(LibC::Int, 4), PixFmtDescriptor*) : Void
    fun image_get_linesize = av_image_get_linesize(PixelFormat, LibC::Int, LibC::Int) : LibC::Int
    fun image_fill_linesizes = av_image_fill_linesizes(StaticArray(LibC::Int, 4), PixelFormat, LibC::Int) : LibC::Int
    fun image_fill_pointers = av_image_fill_pointers(StaticArray(UInt8*, 4), PixelFormat, LibC::Int, UInt8*, StaticArray(LibC::Int, 4)) : LibC::Int
    fun image_alloc = av_image_alloc(StaticArray(UInt8*, 4), StaticArray(LibC::Int, 4), LibC::Int, LibC::Int, PixelFormat, LibC::Int) : LibC::Int
    fun image_copy_plane = av_image_copy_plane(UInt8*, LibC::Int, UInt8*, LibC::Int, LibC::Int, LibC::Int) : Void
    fun image_copy = av_image_copy(StaticArray(UInt8*, 4), StaticArray(LibC::Int, 4), StaticArray(UInt8*, 4), StaticArray(LibC::Int, 4), PixelFormat, LibC::Int, LibC::Int) : Void
    fun image_copy_uc_from = av_image_copy_uc_from(StaticArray(UInt8*, 4), StaticArray(PtrdiffT, 4), StaticArray(UInt8*, 4), StaticArray(PtrdiffT, 4), PixelFormat, LibC::Int, LibC::Int) : Void
    fun image_fill_arrays = av_image_fill_arrays(StaticArray(UInt8*, 4), StaticArray(LibC::Int, 4), UInt8*, PixelFormat, LibC::Int, LibC::Int, LibC::Int) : LibC::Int
    fun image_get_buffer_size = av_image_get_buffer_size(PixelFormat, LibC::Int, LibC::Int, LibC::Int) : LibC::Int
    fun image_copy_to_buffer = av_image_copy_to_buffer(UInt8*, LibC::Int, StaticArray(UInt8*, 4), StaticArray(LibC::Int, 4), PixelFormat, LibC::Int, LibC::Int, LibC::Int) : LibC::Int
    fun image_check_size = av_image_check_size(LibC::UInt, LibC::UInt, LibC::Int, Void*) : LibC::Int
    fun image_check_size2 = av_image_check_size2(LibC::UInt, LibC::UInt, Int64, PixelFormat, LibC::Int, Void*) : LibC::Int
    fun image_check_sar = av_image_check_sar(LibC::UInt, LibC::UInt, Rational) : LibC::Int
    fun image_fill_black = av_image_fill_black(StaticArray(UInt8*, 4), StaticArray(PtrdiffT, 4), PixelFormat, ColorRange, LibC::Int, LibC::Int) : LibC::Int
  end
end
