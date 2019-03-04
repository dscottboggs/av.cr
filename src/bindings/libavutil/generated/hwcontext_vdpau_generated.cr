module AV
  lib LibAVUtil
    #   AVUTIL_HWCONTEXT_VDPAU_H =
    struct AVVDPAUDeviceContext
      device : LibC::Int
      get_proc_address : LibC::Int*
    end
  end
end
