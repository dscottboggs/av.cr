module AV
  lib LibAVUtil
    #   AVUTIL_MOTION_VECTOR_H =
    struct AVMotionVector
      source : Int32T
      w : UInt8
      h : UInt8
      src_x : Int16T
      src_y : Int16T
      dst_x : Int16T
      dst_y : Int16T
      flags : UInt64
      motion_x : Int32T
      motion_y : Int32T
      motion_scale : UInt16
    end
  end
end
