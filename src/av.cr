require "./bindings/libavcodec"
require "./bindings/libavfilter"
require "./bindings/libavformat"
require "./bindings/libavresample"
require "./bindings/libswresample"
require "./bindings/libavutil/libavutil"

module AV
  VERSION = "0.1.0"
  def self.register_all
    LibAVCodec.register_all
  end
end
