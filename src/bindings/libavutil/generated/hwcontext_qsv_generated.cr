module AV
  lib LibAVUtil
    #   AVUTIL_HWCONTEXT_QSV_H =
    struct AVQSVDeviceContext
      session : LibC::Int
    end

    struct AVQSVFramesContext
      surfaces : LibC::Int*
      nb_surfaces : LibC::Int
      frame_type : LibC::Int
    end
  end
end
