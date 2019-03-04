require "./frame"

module AV
  lib LibAVUtil
    enum DownmixType : LibC::UInt
      UNKNOWN = 0
      LORO    = 1
      LTRT    = 2
      DPLII   = 3
      NB      = 4
    end

    struct DownmixInfo
      preferred_downmix_type : DownmixType
      center_mix_level : LibC::Double
      center_mix_level_ltrt : LibC::Double
      surround_mix_level : LibC::Double
      surround_mix_level_ltrt : LibC::Double
      lfe_mix_level : LibC::Double
    end

    fun downmix_info_update_side_data = av_downmix_info_update_side_data(Frame*) : DownmixInfo*
  end
end
