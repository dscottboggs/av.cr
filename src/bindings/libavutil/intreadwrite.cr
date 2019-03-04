module AV
  lib LibAVUtil
    # NOTE: This file contains a lot of macros that have not been translated and
    # may be incomplete

    union AvAlias64
      u64 : UInt64
      u32 : StaticArray(UInt32, 2)
      u16 : StaticArray(UInt16, 4)
      u8 : StaticArray(UInt8, 8)
      f64 : LibC::Double
      f32 : StaticArray(LibC::Float, 2)
    end

    union AvAlias32
      u32 : UInt32
      u16 : StaticArray(UInt16, 2)
      u8 : StaticArray(UInt8, 4)
      f32 : LibC::Float
    end

    union AvAlias16
      u16 : UInt16
      u8 : StaticArray(UInt8, 2)
    end
  end
end
