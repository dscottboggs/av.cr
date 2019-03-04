require "../libavcodec"

module AV
  lib LibAVUtil
    STEREO3D_FLAG_INVERT = 1 << 0
    enum Stereo3DType : LibC::UInt
      STEREO3D_2D                  = 0
      STEREO3D_SIDEBYSIDE          = 1
      STEREO3D_TOPBOTTOM           = 2
      STEREO3D_FRAMESEQUENCE       = 3
      STEREO3D_CHECKERBOARD        = 4
      STEREO3D_SIDEBYSIDE_QUINCUNX = 5
      STEREO3D_LINES               = 6
      STEREO3D_COLUMNS             = 7
    end

    struct Stereo3D
      type : Stereo3DType
      flags : LibC::Int
    end

    fun stereo3d_alloc = av_stereo3d_alloc : Stereo3D*
    fun stereo3d_create_side_data = av_stereo3d_create_side_data(LibAVCodec::Frame*) : Stereo3D*
    fun stereo3d_type_name = av_stereo3d_type_name(LibC::UInt) : LibC::Char*
    fun stereo3d_from_name = av_stereo3d_from_name(LibC::Char*) : LibC::Int
  end
end
