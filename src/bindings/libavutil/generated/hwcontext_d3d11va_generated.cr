module AV
  lib LibAVUtil
    #   AVUTIL_HWCONTEXT_D3D11VA_H =
    struct AVD3D11VADeviceContext
      device : LibC::Int*
      device_context : LibC::Int*
      video_device : LibC::Int*
      video_context : LibC::Int*
      lock : (Void*) -> Void*
      unlock : (Void*) -> Void*
      lock_ctx : Void*
    end

    struct AVD3D11FrameDescriptor
      texture : LibC::Int*
      index : LibC::Int
    end

    struct AVD3D11VAFramesContext
      texture : LibC::Int*
      bind_flags : LibC::Int
      misc_flags : LibC::Int
    end
  end
end
