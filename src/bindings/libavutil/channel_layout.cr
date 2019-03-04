module AV
  lib LibAVUtil
    enum Channel
      FRONT_LEFT            = 0x00000001
      FRONT_RIGHT           = 0x00000002
      FRONT_CENTER          = 0x00000004
      LOW_FREQUENCY         = 0x00000008
      BACK_LEFT             = 0x00000010
      BACK_RIGHT            = 0x00000020
      FRONT_LEFT_OF_CENTER  = 0x00000040
      FRONT_RIGHT_OF_CENTER = 0x00000080
      BACK_CENTER           = 0x00000100
      SIDE_LEFT             = 0x00000200
      SIDE_RIGHT            = 0x00000400
      TOP_CENTER            = 0x00000800
      TOP_FRONT_LEFT        = 0x00001000
      TOP_FRONT_CENTER      = 0x00002000
      TOP_FRONT_RIGHT       = 0x00004000
      TOP_BACK_LEFT         = 0x00008000
      TOP_BACK_CENTER       = 0x00010000
      TOP_BACK_RIGHT        = 0x00020000
      STEREO_LEFT           = 0x20000000
      STEREO_RIGHT          = 0x40000000
      WIDE_LEFT             = ULongLong.new(0x0000000080000000)
      WIDE_RIGHT            = ULongLong.new(0x0000000100000000)
      SURROUND_DIRECT_LEFT  = ULongLong.new(0x0000000200000000)
      SURROUND_DIRECT_RIGHT = ULongLong.new(0x0000000400000000)
      LOW_FREQUENCY_2       = ULongLong.new(0x0000000800000000)
    end
    enum ChannelLayout
      NATIVE                = ULongLong.new(0x8000000000000000)
      MONO                  = Channel::FRONT_CENTER
      STEREO                = Channel::FRONT_LEFT | Channel::FRONT_RIGHT
      TwoPoint1             = ChannelLayout::STEREO | Channel::LOW_FREQUENCY
      TwoPlus1              = ChannelLayout::STEREO | Channel::BACK_CENTER
      SURROUND              = ChannelLayout::STEREO | Channel::FRONT_CENTER
      ThreePoint1           = ChannelLayout::SURROUND | Channel::LOW_FREQUENCY
      FourPoint0            = ChannelLayout::SURROUND | Channel::BACK_CENTER
      FourPoint1            = ChannelLayout::FourPoint0 | Channel::LOW_FREQUENCY
      TwoPlusTwo            = ChannelLayout::STEREO | Channel::SIDE_LEFT | Channel::SIDE_RIGHT
      QUAD                  = ChannelLayout::STEREO | Channel::BACK_LEFT | Channel::BACK_RIGHT
      FivePoint0            = ChannelLayout::SURROUND | Channel::SIDE_LEFT | Channel::SIDE_RIGHT
      FivePoint1            = ChannelLayout::FivePoint0 | Channel::LOW_FREQUENCY
      FivePoint0_BACK       = ChannelLayout::SURROUND | Channel::BACK_LEFT | Channel::BACK_RIGHT
      FivePoint1_BACK       = ChannelLayout::FivePoint0_BACK | Channel::LOW_FREQUENCY
      SixPoint0             = ChannelLayout::FivePoint0 | Channel::BACK_CENTER
      SixPoint0_FRONT       = ChannelLayout::TwoPlusTwo | Channel::FRONT_LEFT_OF_CENTER | Channel::FRONT_RIGHT_OF_CENTER
      HEXAGONAL             = ChannelLayout::FivePoint0_BACK | Channel::BACK_CENTER
      SixPoint1             = ChannelLayout::FivePoint1 | Channel::BACK_CENTER
      SixPoint1_BACK        = ChannelLayout::FivePoint1_BACK | Channel::BACK_CENTER
      SixPoint1_FRONT       = ChannelLayout::SixPoint0_FRONT | Channel::LOW_FREQUENCY
      SevenPoint0           = ChannelLayout::FivePoint0 | Channel::BACK_LEFT | Channel::BACK_RIGHT
      SevenPoint0_FRONT     = ChannelLayout::FivePoint0 | Channel::FRONT_LEFT_OF_CENTER | Channel::FRONT_RIGHT_OF_CENTER
      SevenPoint1           = ChannelLayout::FivePoint1 | Channel::BACK_LEFT | Channel::BACK_RIGHT
      SevenPoint1_WIDE      = ChannelLayout::FivePoint1 | Channel::FRONT_LEFT_OF_CENTER | Channel::FRONT_RIGHT_OF_CENTER
      SevenPoint1_WIDE_BACK = ChannelLayout::FivePoint1_BACK | Channel::FRONT_LEFT_OF_CENTER | Channel::FRONT_RIGHT_OF_CENTER
      OCTAGONAL             = ChannelLayout::FivePoint0 | Channel::BACK_LEFT | Channel::BACK_CENTER | Channel::BACK_RIGHT
      HEXADECAGONAL         = ChannelLayout::OCTAGONAL | Channel::WIDE_LEFT | Channel::WIDE_RIGHT | Channel::TOP_BACK_LEFT | Channel::TOP_BACK_RIGHT | Channel::TOP_BACK_CENTER | Channel::TOP_FRONT_CENTER | Channel::TOP_FRONT_LEFT | Channel::TOP_FRONT_RIGHT
      STEREO_DOWNMIX        = Channel::STEREO_LEFT | Channel::STEREO_RIGHT
    end
    enum MatrixEncoding : LibC::UInt
      NONE           = 0
      DOLBY          = 1
      DPLII          = 2
      DPLIIX         = 3
      DPLIIZ         = 4
      DOLBYEX        = 5
      DOLBYHEADPHONE = 6
      NB             = 7
    end
    type BPrint = Void
    fun get_channel_layout = av_get_channel_layout(LibC::Char*) : UInt64
    fun get_extended_channel_layout = av_get_extended_channel_layout(LibC::Char*, UInt64*, LibC::Int*) : LibC::Int
    fun get_channel_layout_string = av_get_channel_layout_string(LibC::Char*, LibC::Int, LibC::Int, UInt64) : Void
    fun bprint_channel_layout = av_bprint_channel_layout(AVBPrint*, LibC::Int, UInt64) : Void
    fun get_channel_layout_nb_channels = av_get_channel_layout_nb_channels(UInt64) : LibC::Int
    fun get_default_channel_layout = av_get_default_channel_layout(LibC::Int) : Int64T
    fun get_channel_layout_channel_index = av_get_channel_layout_channel_index(UInt64, UInt64) : LibC::Int
    fun channel_layout_extract_channel = av_channel_layout_extract_channel(UInt64, LibC::Int) : UInt64
    fun get_channel_name = av_get_channel_name(UInt64) : LibC::Char*
    fun get_channel_description = av_get_channel_description(UInt64) : LibC::Char*
    fun get_standard_channel_layout = av_get_standard_channel_layout(LibC::UInt, UInt64*, LibC::Char**) : LibC::Int
  end
end
