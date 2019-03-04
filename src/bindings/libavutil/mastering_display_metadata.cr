require "./rational"
require "./frame"
module AV
  lib LibAVUtil
    struct MasteringDisplayMetadata
      display_primaries : StaticArray(StaticArray(Rational, 2), 3)
      white_point : StaticArray(Rational, 2)
      min_luminance : Rational
      max_luminance : Rational
      has_primaries : LibC::Int
      has_luminance : LibC::Int
    end

    fun mastering_display_metadata_alloc = av_mastering_display_metadata_alloc : MasteringDisplayMetadata*
    fun mastering_display_metadata_create_side_data = av_mastering_display_metadata_create_side_data(Frame*) : MasteringDisplayMetadata*

    struct ContentLightMetadata
      max_cll : LibC::UInt
      max_fall : LibC::UInt
    end

    fun content_light_metadata_alloc = av_content_light_metadata_alloc(SizeT*) : ContentLightMetadata*
    fun content_light_metadata_create_side_data = av_content_light_metadata_create_side_data(Frame*) : ContentLightMetadata*
  end
end
