module AV
  lib LibAVCodec

    # This is pulled from some included file but I'm not sure which.
    enum AVMediaType : LibC::Int
      UNKNOWN = -1
      VIDEO = 0
      AUDIO = 1
      DATA = 2
      SUBTITLE = 3
      ATTACHMENT = 4
      NB = 5
    end
    # Types that weren't automatically defined
    type AVBufferRef = Void
    type AVClass = Void
    type FILE = Int32
    # Another Mystery type pulled in from `generated_process_everything_edited.cr`
    struct AVRational
      num : LibC::Int
      den : LibC::Int
    end
    enum AVPixelFormat : LibC::Int
      NONE = -1
      YUV420P = 0
      YUYV422 = 1
      RGB24 = 2
      BGR24 = 3
      YUV422P = 4
      YUV444P = 5
      YUV410P = 6
      YUV411P = 7
      GRAY8 = 8
      MONOWHITE = 9
      MONOBLACK = 10
      PAL8 = 11
      YUVJ420P = 12
      YUVJ422P = 13
      YUVJ444P = 14
      XVMC_MPEG2_MC = 15
      XVMC_MPEG2_IDCT = 16
      XVMC = 16
      UYVY422 = 17
      UYYVYY411 = 18
      BGR8 = 19
      BGR4 = 20
      BGR4_BYTE = 21
      RGB8 = 22
      RGB4 = 23
      RGB4_BYTE = 24
      NV12 = 25
      NV21 = 26
      ARGB = 27
      RGBA = 28
      ABGR = 29
      BGRA = 30
      GRAY16BE = 31
      GRAY16LE = 32
      YUV440P = 33
      YUVJ440P = 34
      YUVA420P = 35
      VDPAU_H264 = 36
      VDPAU_MPEG1 = 37
      VDPAU_MPEG2 = 38
      VDPAU_WMV3 = 39
      VDPAU_VC1 = 40
      RGB48BE = 41
      RGB48LE = 42
      RGB565BE = 43
      RGB565LE = 44
      RGB555BE = 45
      RGB555LE = 46
      BGR565BE = 47
      BGR565LE = 48
      BGR555BE = 49
      BGR555LE = 50
      VAAPI_MOCO = 51
      VAAPI_IDCT = 52
      VAAPI_VLD = 53
      VAAPI = 53
      YUV420P16LE = 54
      YUV420P16BE = 55
      YUV422P16LE = 56
      YUV422P16BE = 57
      YUV444P16LE = 58
      YUV444P16BE = 59
      VDPAU_MPEG4 = 60
      DXVA2_VLD = 61
      RGB444LE = 62
      RGB444BE = 63
      BGR444LE = 64
      BGR444BE = 65
      YA8 = 66
      Y400A = 66
      GRAY8A = 66
      BGR48BE = 67
      BGR48LE = 68
      YUV420P9BE = 69
      YUV420P9LE = 70
      YUV420P10BE = 71
      YUV420P10LE = 72
      YUV422P10BE = 73
      YUV422P10LE = 74
      YUV444P9BE = 75
      YUV444P9LE = 76
      YUV444P10BE = 77
      YUV444P10LE = 78
      YUV422P9BE = 79
      YUV422P9LE = 80
      VDA_VLD = 81
      GBRP = 82
      GBR24P = 82
      GBRP9BE = 83
      GBRP9LE = 84
      GBRP10BE = 85
      GBRP10LE = 86
      GBRP16BE = 87
      GBRP16LE = 88
      YUVA422P = 89
      YUVA444P = 90
      YUVA420P9BE = 91
      YUVA420P9LE = 92
      YUVA422P9BE = 93
      YUVA422P9LE = 94
      YUVA444P9BE = 95
      YUVA444P9LE = 96
      YUVA420P10BE = 97
      YUVA420P10LE = 98
      YUVA422P10BE = 99
      YUVA422P10LE = 100
      YUVA444P10BE = 101
      YUVA444P10LE = 102
      YUVA420P16BE = 103
      YUVA420P16LE = 104
      YUVA422P16BE = 105
      YUVA422P16LE = 106
      YUVA444P16BE = 107
      YUVA444P16LE = 108
      VDPAU = 109
      XYZ12LE = 110
      XYZ12BE = 111
      NV16 = 112
      NV20LE = 113
      NV20BE = 114
      RGBA64BE = 115
      RGBA64LE = 116
      BGRA64BE = 117
      BGRA64LE = 118
      YVYU422 = 119
      VDA = 120
      YA16BE = 121
      YA16LE = 122
      GBRAP = 123
      GBRAP16BE = 124
      GBRAP16LE = 125
      QSV = 126
      MMAL = 127
      D3D11VA_VLD = 128
      CUDA = 129
      FMT_0RGB = 295
      RGB0 = 296
      FMT_0BGR = 297
      BGR0 = 298
      YUV420P12BE = 299
      YUV420P12LE = 300
      YUV420P14BE = 301
      YUV420P14LE = 302
      YUV422P12BE = 303
      YUV422P12LE = 304
      YUV422P14BE = 305
      YUV422P14LE = 306
      YUV444P12BE = 307
      YUV444P12LE = 308
      YUV444P14BE = 309
      YUV444P14LE = 310
      GBRP12BE = 311
      GBRP12LE = 312
      GBRP14BE = 313
      GBRP14LE = 314
      YUVJ411P = 315
      BAYER_BGGR8 = 316
      BAYER_RGGB8 = 317
      BAYER_GBRG8 = 318
      BAYER_GRBG8 = 319
      BAYER_BGGR16LE = 320
      BAYER_BGGR16BE = 321
      BAYER_RGGB16LE = 322
      BAYER_RGGB16BE = 323
      BAYER_GBRG16LE = 324
      BAYER_GBRG16BE = 325
      BAYER_GRBG16LE = 326
      BAYER_GRBG16BE = 327
      YUV440P10LE = 328
      YUV440P10BE = 329
      YUV440P12LE = 330
      YUV440P12BE = 331
      AYUV64LE = 332
      AYUV64BE = 333
      VIDEOTOOLBOX = 334
      P010LE = 335
      P010BE = 336
      GBRAP12BE = 337
      GBRAP12LE = 338
      GBRAP10BE = 339
      GBRAP10LE = 340
      MEDIACODEC = 341
      GRAY12BE = 342
      GRAY12LE = 343
      GRAY10BE = 344
      GRAY10LE = 345
      P016LE = 346
      P016BE = 347
      D3D11 = 348
      GRAY9BE = 349
      GRAY9LE = 350
      GBRPF32BE = 351
      GBRPF32LE = 352
      GBRAPF32BE = 353
      GBRAPF32LE = 354
      DRM_PRIME = 355
      NB = 356
    end
    type AVFrame = Void
    enum AVColorPrimaries : LibC::UInt
      RESERVED0 = 0
      BT709 = 1
      UNSPECIFIED = 2
      RESERVED = 3
      BT470M = 4
      BT470BG = 5
      SMPTE170M = 6
      SMPTE240M = 7
      FILM = 8
      BT2020 = 9
      SMPTE428 = 10
      SMPTEST428_1 = 10
      SMPTE431 = 11
      SMPTE432 = 12
      JEDEC_P22 = 22
      NB = 23
    end
    enum AVColorTransferCharacteristic : LibC::UInt
      RESERVED0 = 0
      BT709 = 1
      UNSPECIFIED = 2
      RESERVED = 3
      GAMMA22 = 4
      GAMMA28 = 5
      SMPTE170M = 6
      SMPTE240M = 7
      LINEAR = 8
      LOG = 9
      LOG_SQRT = 10
      IEC61966_2_4 = 11
      BT1361_ECG = 12
      IEC61966_2_1 = 13
      BT2020_10 = 14
      BT2020_12 = 15
      SMPTE2084 = 16
      SMPTEST2084 = 16
      SMPTE428 = 17
      SMPTEST428_1 = 17
      ARIB_STD_B67 = 18
      NB = 19
    end
    enum AVColorSpace : LibC::UInt
      RGB = 0
      BT709 = 1
      UNSPECIFIED = 2
      RESERVED = 3
      FCC = 4
      BT470BG = 5
      SMPTE170M = 6
      SMPTE240M = 7
      YCGCO = 8
      YCOCG = 8
      BT2020_NCL = 9
      BT2020_CL = 10
      SMPTE2085 = 11
      CHROMA_DERIVED_NCL = 12
      CHROMA_DERIVED_CL = 13
      ICTCP = 14
      NB = 15
    end
    enum AVColorRange : LibC::UInt
      UNSPECIFIED = 0
      MPEG = 1
      JPEG = 2
      NB = 3
    end
    enum AVChromaLocation : LibC::UInt
      UNSPECIFIED = 0
      LEFT = 1
      CENTER = 2
      TOPLEFT = 3
      TOP = 4
      BOTTOMLEFT = 5
      BOTTOM = 6
      NB = 7
    end
    enum AVSampleFormat : LibC::Int
      NONE = -1
      U8 = 0
      S16 = 1
      S32 = 2
      FLT = 3
      DBL = 4
      U8P = 5
      S16P = 6
      S32P = 7
      FLTP = 8
      DBLP = 9
      S64 = 10
      S64P = 11
      NB = 12
    end
    type AVDictionary = Void
    alias SizeT = LibC::ULong
  end
end