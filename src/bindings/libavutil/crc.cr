module AV
  lib LibAVUtil
    alias CRC = UInt32
    enum CRCId : LibC::UInt
      CRC_8_ATM      =  0
      CRC_16_ANSI    =  1
      CRC_16_CCITT   =  2
      CRC_32_IEEE    =  3
      CRC_32_IEEE_LE =  4
      CRC_16_ANSI_LE =  5
      CRC_24_IEEE    = 12
      CRC_MAX        = 13
    end
    fun crc_init = av_crc_init(CRC*, LibC::Int, LibC::Int, UInt32, LibC::Int) : LibC::Int
    fun crc_get_table = av_crc_get_table(CRCId) : CRC*
    fun crc = av_crc(CRC*, UInt32, Uint8T*, SizeT) : UInt32
  end
end
