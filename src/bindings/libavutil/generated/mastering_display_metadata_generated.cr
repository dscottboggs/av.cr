module AV
  lib LibAVUtil
    #   AVUTIL_MASTERING_DISPLAY_METADATA_H =
    struct AVMasteringDisplayMetadata
      display_primaries : StaticArray(StaticArray(AVRational, 2), 3)
      white_point : StaticArray(AVRational, 2)
      min_luminance : AVRational
      max_luminance : AVRational
      has_primaries : LibC::Int
      has_luminance : LibC::Int
    end

    fun av_mastering_display_metadata_alloc : AVMasteringDisplayMetadata*
    fun av_mastering_display_metadata_create_side_data(AVFrame*) : AVMasteringDisplayMetadata*

    struct AVContentLightMetadata
      max_cll : LibC::UInt
      max_fall : LibC::UInt
    end

    fun av_content_light_metadata_alloc(SizeT*) : AVContentLightMetadata*
    fun av_content_light_metadata_create_side_data(AVFrame*) : AVContentLightMetadata*
  end
end
