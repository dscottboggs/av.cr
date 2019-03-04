module AV
  lib LibAVUtil
    #   AVUTIL_HWCONTEXT_CUDA_H =
    type AVCUDADeviceContextInternal = Void

    struct AVCUDADeviceContext
      cuda_ctx : LibC::Int
      internal : AVCUDADeviceContextInternal*
    end
  end
end
