module AV
  lib LibAVUtil
    #   AVUTIL_IMGUTILS_H =
    fun av_image_fill_max_pixsteps(StaticArray(LibC::Int, 4), StaticArray(LibC::Int, 4), AVPixFmtDescriptor*) : Void
    fun av_image_get_linesize(AVPixelFormat, LibC::Int, LibC::Int) : LibC::Int
    fun av_image_fill_linesizes(StaticArray(LibC::Int, 4), AVPixelFormat, LibC::Int) : LibC::Int
    fun av_image_fill_pointers(StaticArray(UInt8*, 4), AVPixelFormat, LibC::Int, UInt8*, StaticArray(LibC::Int, 4)) : LibC::Int
    fun av_image_alloc(StaticArray(UInt8*, 4), StaticArray(LibC::Int, 4), LibC::Int, LibC::Int, AVPixelFormat, LibC::Int) : LibC::Int
    fun av_image_copy_plane(UInt8*, LibC::Int, Uint8T*, LibC::Int, LibC::Int, LibC::Int) : Void
    fun av_image_copy(StaticArray(UInt8*, 4), StaticArray(LibC::Int, 4), StaticArray(Uint8T*, 4), StaticArray(LibC::Int, 4), AVPixelFormat, LibC::Int, LibC::Int) : Void
    fun av_image_copy_uc_from(StaticArray(UInt8*, 4), StaticArray(PtrdiffT, 4), StaticArray(Uint8T*, 4), StaticArray(PtrdiffT, 4), AVPixelFormat, LibC::Int, LibC::Int) : Void
    fun av_image_fill_arrays(StaticArray(UInt8*, 4), StaticArray(LibC::Int, 4), Uint8T*, AVPixelFormat, LibC::Int, LibC::Int, LibC::Int) : LibC::Int
    fun av_image_get_buffer_size(AVPixelFormat, LibC::Int, LibC::Int, LibC::Int) : LibC::Int
    fun av_image_copy_to_buffer(UInt8*, LibC::Int, StaticArray(Uint8T*, 4), StaticArray(LibC::Int, 4), AVPixelFormat, LibC::Int, LibC::Int, LibC::Int) : LibC::Int
    fun av_image_check_size(LibC::UInt, LibC::UInt, LibC::Int, Void*) : LibC::Int
    fun av_image_check_size2(LibC::UInt, LibC::UInt, Int64T, AVPixelFormat, LibC::Int, Void*) : LibC::Int
    fun av_image_check_sar(LibC::UInt, LibC::UInt, AVRational) : LibC::Int
    fun av_image_fill_black(StaticArray(UInt8*, 4), StaticArray(PtrdiffT, 4), AVPixelFormat, AVColorRange, LibC::Int, LibC::Int) : LibC::Int
  end
end
