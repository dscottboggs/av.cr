module AV
  lib LibAVUtil
    struct DXVA2DeviceContext
      devmgr : LibC::Int*
    end

    struct DXVA2FramesContext
      surface_type : LibC::Int
      surfaces : LibC::Int**
      nb_surfaces : LibC::Int
      decoder_to_release : LibC::Int*
    end
  end
end
