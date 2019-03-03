module AV
  lib LibAVResample
    type AVClass = Void
    enum AVMatrixEncoding : LibC::UInt
      NONE = 0
      DOLBY = 1
      DPLII = 2
      DPLIIX = 3
      DPLIIZ = 4
      DOLBYEX = 5
      DOLBYHEADPHONE = 6
      NB = 7
    end
  end
end
