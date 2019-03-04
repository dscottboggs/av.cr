module AV
  lib LibAVUtil
    struct VDPAUDeviceContext
      device : LibC::Int
      get_proc_address : LibC::Int*
    end
  end
end
