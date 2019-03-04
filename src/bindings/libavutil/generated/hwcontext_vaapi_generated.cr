module AV
  lib LibAVUtil
    #   AVUTIL_HWCONTEXT_VAAPI_H =
    struct AVVAAPIDeviceContext
      display : LibC::Int
      driver_quirks : LibC::UInt
    end

    struct AVVAAPIFramesContext
      attributes : LibC::Int*
      nb_attributes : LibC::Int
      surface_ids : LibC::Int*
      nb_surfaces : LibC::Int
    end

    struct AVVAAPIHWConfig
      config_id : LibC::Int
    end
  end
end
