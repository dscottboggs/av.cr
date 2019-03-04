module AV
  lib LibAVUtil
    #   AVUTIL_DISPLAY_H =
    fun av_display_rotation_get(StaticArray(Int32T, 9)) : LibC::Double
    fun av_display_rotation_set(StaticArray(Int32T, 9), LibC::Double) : Void
    fun av_display_matrix_flip(StaticArray(Int32T, 9), LibC::Int, LibC::Int) : Void
  end
end
