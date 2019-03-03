require "../libavcodec"
require "./libavcodec"
module AV
  lib LibAVFormat
    type AVIOContext = Void
    type FFFrac = Void
    type SizeT = LibC::Long
    type AVIOInterruptCB = Void* -> Int32
    type AVCodec = Void
    type FILE = Int32
    enum AVPacketSideDataType : LibC::UInt
      PALETTE = 0
      NEW_EXTRADATA = 1
      PARAM_CHANGE = 2
      H263_MB_INFO = 3
      REPLAYGAIN = 4
      DISPLAYMATRIX = 5
      STEREO3D = 6
      AUDIO_SERVICE_TYPE = 7
      QUALITY_STATS = 8
      FALLBACK_TRACK = 9
      CPB_PROPERTIES = 10
      SKIP_SAMPLES = 70
      JP_DUALMONO = 71
      STRINGS_METADATA = 72
      SUBTITLE_POSITION = 73
      MATROSKA_BLOCKADDITIONAL = 74
      WEBVTT_IDENTIFIER = 75
      WEBVTT_SETTINGS = 76
      METADATA_UPDATE = 77
      MPEGTS_STREAM_ID = 78
      MASTERING_DISPLAY_METADATA = 79
      SPHERICAL = 80
      CONTENT_LIGHT_LEVEL = 81
      A53_CC = 82
      NB = 83
    end
    struct AVPacketSideData
      data : UInt8*
      size : LibC::Int
      type : AVPacketSideDataType
    end
    struct AVPacket
      buf : LibAVCodec::AVBufferRef*
      pts : Int64
      dts : Int64
      data : UInt8*
      size : LibC::Int
      stream_index : LibC::Int
      flags : LibC::Int
      side_data : AVPacketSideData*
      side_data_elems : LibC::Int
      duration : Int64
      pos : Int64
      convergence_duration : Int64
    end
    alias AVRational = LibAVCodec::AVRational
  end
end
