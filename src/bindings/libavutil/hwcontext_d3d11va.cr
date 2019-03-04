module AV
  lib LibAVUtil
    struct D3D11VADeviceContext
      device : LibC::Int*
      device_context : LibC::Int*
      video_device : LibC::Int*
      video_context : LibC::Int*
      lock : (Void*) -> Void*
      unlock : (Void*) -> Void*
      lock_ctx : Void*
    end

    struct D3D11FrameDescriptor
      texture : LibC::Int*
      index : LibC::Int
    end

    struct D3D11VAFramesContext
      texture : LibC::Int*
      bind_flags : LibC::Int
      misc_flags : LibC::Int
    end
  end
end
