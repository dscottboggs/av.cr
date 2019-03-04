module AV
  lib LibAVUtil
    struct VAAPIDeviceContext
      display : LibC::Int
      driver_quirks : LibC::UInt
    end

    struct VAAPIFramesContext
      attributes : LibC::Int*
      nb_attributes : LibC::Int
      surface_ids : LibC::Int*
      nb_surfaces : LibC::Int
    end

    struct VAAPIHWConfig
      config_id : LibC::Int
    end
  end
end
