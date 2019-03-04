module AV
  lib LibAVUtil
    #   AVUTIL_CRC_H =
    alias AVCRC = UInt32
    enum AVCRCId : LibC::UInt
      AV_CRC_8_ATM      =  0
      AV_CRC_16_ANSI    =  1
      AV_CRC_16_CCITT   =  2
      AV_CRC_32_IEEE    =  3
      AV_CRC_32_IEEE_LE =  4
      AV_CRC_16_ANSI_LE =  5
      AV_CRC_24_IEEE    = 12
      AV_CRC_MAX        = 13
    end
    fun av_crc_init(AVCRC*, LibC::Int, LibC::Int, UInt32, LibC::Int) : LibC::Int
    fun av_crc_get_table(AVCRCId) : AVCRC*
    fun av_crc(AVCRC*, UInt32, Uint8T*, SizeT) : UInt32
  end
end
