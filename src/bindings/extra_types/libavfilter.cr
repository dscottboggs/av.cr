require "./libavcodec"
module AV
  lib LibAVFilter
    type AVMediaType = LibAVCodec::AVMediaType
    type AVClass = LibAVCodec::AVClass
    type AVDictionary = LibAVCodec::AVDictionary
    type AVBufferRef = LibAVCodec::AVBufferRef
    type AVRational = LibAVCodec::AVRational
    type AVFrame = LibAVCodec::AVFrame
    type AVFilterChannelLayouts = Void
    type AVFilterCommand = Void
    type FILE = Int32
  end
end
