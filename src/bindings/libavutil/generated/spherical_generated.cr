module AV
  lib LibAVUtil
    #   AVUTIL_SPHERICAL_H =
    enum AVSphericalProjection : LibC::UInt
      AV_SPHERICAL_EQUIRECTANGULAR      = 0
      AV_SPHERICAL_CUBEMAP              = 1
      AV_SPHERICAL_EQUIRECTANGULAR_TILE = 2
    end

    struct AVSphericalMapping
      projection : AVSphericalProjection
      yaw : Int32T
      pitch : Int32T
      roll : Int32T
      bound_left : UInt32
      bound_top : UInt32
      bound_right : UInt32
      bound_bottom : UInt32
      padding : UInt32
    end

    fun av_spherical_alloc(SizeT*) : AVSphericalMapping*
    fun av_spherical_tile_bounds(AVSphericalMapping*, SizeT, SizeT, SizeT*, SizeT*, SizeT*, SizeT*) : Void
    fun av_spherical_projection_name(AVSphericalProjection) : LibC::Char*
    fun av_spherical_from_name(LibC::Char*) : LibC::Int
  end
end
