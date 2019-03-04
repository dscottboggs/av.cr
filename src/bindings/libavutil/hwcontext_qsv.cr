module AV
  lib LibAVUtil
    struct QSVDeviceContext
      session : LibC::Int
    end

    struct QSVFramesContext
      surfaces : LibC::Int*
      nb_surfaces : LibC::Int
      frame_type : LibC::Int
    end
  end
end
