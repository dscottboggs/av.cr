module AV
  lib LibAVUtil
    fun display_rotation_get = av_display_rotation_get(StaticArray(Int32, 9)) : LibC::Double
    fun display_rotation_set = av_display_rotation_set(StaticArray(Int32, 9), LibC::Double) : Void
    fun display_matrix_flip = av_display_matrix_flip(StaticArray(Int32, 9), LibC::Int, LibC::Int) : Void
  end
end
