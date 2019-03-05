module AV
  lib LibAVUtil
    #   AVUTIL_DOWNMIX_INFO_H =
    enum AVDownmixType : LibC::UInt
      AV_DOWNMIX_TYPE_UNKNOWN = 0
      AV_DOWNMIX_TYPE_LORO    = 1
      AV_DOWNMIX_TYPE_LTRT    = 2
      AV_DOWNMIX_TYPE_DPLII   = 3
      AV_DOWNMIX_TYPE_NB      = 4
    end

    struct AVDownmixInfo
      preferred_downmix_type : AVDownmixType
      center_mix_level : LibC::Double
      center_mix_level_ltrt : LibC::Double
      surround_mix_level : LibC::Double
      surround_mix_level_ltrt : LibC::Double
      lfe_mix_level : LibC::Double
    end

    fun av_downmix_info_update_side_data(AVFrame*) : AVDownmixInfo*
  end
end
