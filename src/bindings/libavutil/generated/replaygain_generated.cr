module AV
  lib LibAVUtil
    #   AVUTIL_REPLAYGAIN_H =
    struct AVReplayGain
      track_gain : Int32T
      track_peak : UInt32
      album_gain : Int32T
      album_peak : UInt32
    end
  end
end
