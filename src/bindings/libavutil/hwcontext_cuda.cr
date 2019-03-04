module AV
  lib LibAVUtil
    type CUDADeviceContextInternal = Void

    struct CUDADeviceContext
      cuda_ctx : LibC::Int
      internal : CUDADeviceContextInternal*
    end
  end
end
