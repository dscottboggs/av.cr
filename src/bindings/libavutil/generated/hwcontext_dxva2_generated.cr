module AV
  lib LibAVUtil
    #   AVUTIL_HWCONTEXT_DXVA2_H =
    struct AVDXVA2DeviceContext
      devmgr : LibC::Int*
    end

    struct AVDXVA2FramesContext
      surface_type : LibC::Int
      surfaces : LibC::Int**
      nb_surfaces : LibC::Int
      decoder_to_release : LibC::Int*
    end
  end
end
