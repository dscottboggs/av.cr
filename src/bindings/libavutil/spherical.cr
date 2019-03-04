module AV
  lib LibAVUtil
    enum SphericalProjection : LibC::UInt
      EQUIRECTANGULAR      = 0
      CUBEMAP              = 1
      EQUIRECTANGULAR_TILE = 2
    end

    struct SphericalMapping
      projection : SphericalProjection
      yaw : Int32
      pitch : Int32
      roll : Int32
      bound_left : UInt32
      bound_top : UInt32
      bound_right : UInt32
      bound_bottom : UInt32
      padding : UInt32
    end

    fun spherical_alloc = av_spherical_alloc(SizeT*) : SphericalMapping*
    fun spherical_tile_bounds = av_spherical_tile_bounds(SphericalMapping*, SizeT, SizeT, SizeT*, SizeT*, SizeT*, SizeT*) : Void
    fun spherical_projection_name = av_spherical_projection_name(SphericalProjection) : LibC::Char*
    fun spherical_from_name = av_spherical_from_name(LibC::Char*) : LibC::Int
  end
end
