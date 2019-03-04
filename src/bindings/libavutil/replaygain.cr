module AV
  lib LibAVUtil
    struct ReplayGain
      track_gain : Int32
      track_peak : UInt32
      album_gain : Int32
      album_peak : UInt32
    end
  end
end
