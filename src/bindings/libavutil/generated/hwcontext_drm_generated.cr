module AV
  lib LibAVUtil
    #   AVUTIL_HWCONTEXT_DRM_H =
    struct AVDRMObjectDescriptor
      fd : LibC::Int
      size : SizeT
      format_modifier : UInt64
    end

    struct AVDRMPlaneDescriptor
      object_index : LibC::Int
      offset : PtrdiffT
      pitch : PtrdiffT
    end

    struct AVDRMLayerDescriptor
      format : UInt32
      nb_planes : LibC::Int
      planes : StaticArray(AVDRMPlaneDescriptor, 4)
    end

    struct AVDRMFrameDescriptor
      nb_objects : LibC::Int
      objects : StaticArray(AVDRMObjectDescriptor, 4)
      nb_layers : LibC::Int
      layers : StaticArray(AVDRMLayerDescriptor, 4)
    end

    struct AVDRMDeviceContext
      fd : LibC::Int
    end
  end
end
