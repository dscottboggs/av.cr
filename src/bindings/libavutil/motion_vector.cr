module AV
  lib LibAVUtil
    struct MotionVector
      source : Int32
      w : UInt8
      h : UInt8
      src_x : Int16
      src_y : Int16
      dst_x : Int16
      dst_y : Int16
      flags : UInt64
      motion_x : Int32
      motion_y : Int32
      motion_scale : UInt16
    end
  end
end
