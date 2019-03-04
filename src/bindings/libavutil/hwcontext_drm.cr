module AV
  lib LibAVUtil
    struct DRMObjectDescriptor
      fd : LibC::Int
      size : SizeT
      format_modifier : UInt64
    end

    struct DRMPlaneDescriptor
      object_index : LibC::Int
      offset : PtrdiffT
      pitch : PtrdiffT
    end

    struct DRMLayerDescriptor
      format : UInt32
      nb_planes : LibC::Int
      planes : StaticArray(DRMPlaneDescriptor, 4)
    end

    struct DRMFrameDescriptor
      nb_objects : LibC::Int
      objects : StaticArray(DRMObjectDescriptor, 4)
      nb_layers : LibC::Int
      layers : StaticArray(DRMLayerDescriptor, 4)
    end

    struct DRMDeviceContext
      fd : LibC::Int
    end
  end
end
