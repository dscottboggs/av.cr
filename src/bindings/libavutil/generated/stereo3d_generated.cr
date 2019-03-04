module AV
  lib LibAVUtil
    #   AVUTIL_STEREO3D_H =
    AV_STEREO3D_FLAG_INVERT = 1 << 0
    enum AVStereo3DType : LibC::UInt
      AV_STEREO3D_2D                  = 0
      AV_STEREO3D_SIDEBYSIDE          = 1
      AV_STEREO3D_TOPBOTTOM           = 2
      AV_STEREO3D_FRAMESEQUENCE       = 3
      AV_STEREO3D_CHECKERBOARD        = 4
      AV_STEREO3D_SIDEBYSIDE_QUINCUNX = 5
      AV_STEREO3D_LINES               = 6
      AV_STEREO3D_COLUMNS             = 7
    end

    struct AVStereo3D
      type : AVStereo3DType
      flags : LibC::Int
    end

    fun av_stereo3d_alloc : AVStereo3D*
    fun av_stereo3d_create_side_data(AVFrame*) : AVStereo3D*
    fun av_stereo3d_type_name(LibC::UInt) : LibC::Char*
    fun av_stereo3d_from_name(LibC::Char*) : LibC::Int
  end
end
