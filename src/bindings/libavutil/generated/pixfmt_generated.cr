module AV
  lib LibAVUtil
    #   AVUTIL_PIXFMT_H =
    AVPALETTE_SIZE  = 1024
    AVPALETTE_COUNT =  256
    #   AV_PIX_FMT_NE = ( be, le) AV_PIX_FMT_## le
    AV_PIX_FMT_RGB32   = AV_PIX_FMT_NE(ARGB, BGRA)
    AV_PIX_FMT_RGB32_1 = AV_PIX_FMT_NE(RGBA, ABGR)
    AV_PIX_FMT_BGR32   = AV_PIX_FMT_NE(ABGR, RGBA)
    AV_PIX_FMT_BGR32_1 = AV_PIX_FMT_NE(BGRA, ARGB)
    #   AV_PIX_FMT_0RGB32 = AV_PIX_FMT_NE(0RGB, BGR0)
    #   AV_PIX_FMT_0BGR32 = AV_PIX_FMT_NE(0BGR, RGB0)
    AV_PIX_FMT_GRAY9        = AV_PIX_FMT_NE(GRAY9BE, GRAY9LE)
    AV_PIX_FMT_GRAY10       = AV_PIX_FMT_NE(GRAY10BE, GRAY10LE)
    AV_PIX_FMT_GRAY12       = AV_PIX_FMT_NE(GRAY12BE, GRAY12LE)
    AV_PIX_FMT_GRAY16       = AV_PIX_FMT_NE(GRAY16BE, GRAY16LE)
    AV_PIX_FMT_YA16         = AV_PIX_FMT_NE(YA16BE, YA16LE)
    AV_PIX_FMT_RGB48        = AV_PIX_FMT_NE(RGB48BE, RGB48LE)
    AV_PIX_FMT_RGB565       = AV_PIX_FMT_NE(RGB565BE, RGB565LE)
    AV_PIX_FMT_RGB555       = AV_PIX_FMT_NE(RGB555BE, RGB555LE)
    AV_PIX_FMT_RGB444       = AV_PIX_FMT_NE(RGB444BE, RGB444LE)
    AV_PIX_FMT_RGBA64       = AV_PIX_FMT_NE(RGBA64BE, RGBA64LE)
    AV_PIX_FMT_BGR48        = AV_PIX_FMT_NE(BGR48BE, BGR48LE)
    AV_PIX_FMT_BGR565       = AV_PIX_FMT_NE(BGR565BE, BGR565LE)
    AV_PIX_FMT_BGR555       = AV_PIX_FMT_NE(BGR555BE, BGR555LE)
    AV_PIX_FMT_BGR444       = AV_PIX_FMT_NE(BGR444BE, BGR444LE)
    AV_PIX_FMT_BGRA64       = AV_PIX_FMT_NE(BGRA64BE, BGRA64LE)
    AV_PIX_FMT_YUV420P9     = AV_PIX_FMT_NE(YUV420P9BE, YUV420P9LE)
    AV_PIX_FMT_YUV422P9     = AV_PIX_FMT_NE(YUV422P9BE, YUV422P9LE)
    AV_PIX_FMT_YUV444P9     = AV_PIX_FMT_NE(YUV444P9BE, YUV444P9LE)
    AV_PIX_FMT_YUV420P10    = AV_PIX_FMT_NE(YUV420P10BE, YUV420P10LE)
    AV_PIX_FMT_YUV422P10    = AV_PIX_FMT_NE(YUV422P10BE, YUV422P10LE)
    AV_PIX_FMT_YUV440P10    = AV_PIX_FMT_NE(YUV440P10BE, YUV440P10LE)
    AV_PIX_FMT_YUV444P10    = AV_PIX_FMT_NE(YUV444P10BE, YUV444P10LE)
    AV_PIX_FMT_YUV420P12    = AV_PIX_FMT_NE(YUV420P12BE, YUV420P12LE)
    AV_PIX_FMT_YUV422P12    = AV_PIX_FMT_NE(YUV422P12BE, YUV422P12LE)
    AV_PIX_FMT_YUV440P12    = AV_PIX_FMT_NE(YUV440P12BE, YUV440P12LE)
    AV_PIX_FMT_YUV444P12    = AV_PIX_FMT_NE(YUV444P12BE, YUV444P12LE)
    AV_PIX_FMT_YUV420P14    = AV_PIX_FMT_NE(YUV420P14BE, YUV420P14LE)
    AV_PIX_FMT_YUV422P14    = AV_PIX_FMT_NE(YUV422P14BE, YUV422P14LE)
    AV_PIX_FMT_YUV444P14    = AV_PIX_FMT_NE(YUV444P14BE, YUV444P14LE)
    AV_PIX_FMT_YUV420P16    = AV_PIX_FMT_NE(YUV420P16BE, YUV420P16LE)
    AV_PIX_FMT_YUV422P16    = AV_PIX_FMT_NE(YUV422P16BE, YUV422P16LE)
    AV_PIX_FMT_YUV444P16    = AV_PIX_FMT_NE(YUV444P16BE, YUV444P16LE)
    AV_PIX_FMT_GBRP9        = AV_PIX_FMT_NE(GBRP9BE, GBRP9LE)
    AV_PIX_FMT_GBRP10       = AV_PIX_FMT_NE(GBRP10BE, GBRP10LE)
    AV_PIX_FMT_GBRP12       = AV_PIX_FMT_NE(GBRP12BE, GBRP12LE)
    AV_PIX_FMT_GBRP14       = AV_PIX_FMT_NE(GBRP14BE, GBRP14LE)
    AV_PIX_FMT_GBRP16       = AV_PIX_FMT_NE(GBRP16BE, GBRP16LE)
    AV_PIX_FMT_GBRAP10      = AV_PIX_FMT_NE(GBRAP10BE, GBRAP10LE)
    AV_PIX_FMT_GBRAP12      = AV_PIX_FMT_NE(GBRAP12BE, GBRAP12LE)
    AV_PIX_FMT_GBRAP16      = AV_PIX_FMT_NE(GBRAP16BE, GBRAP16LE)
    AV_PIX_FMT_BAYER_BGGR16 = AV_PIX_FMT_NE(BAYER_BGGR16BE, BAYER_BGGR16LE)
    AV_PIX_FMT_BAYER_RGGB16 = AV_PIX_FMT_NE(BAYER_RGGB16BE, BAYER_RGGB16LE)
    AV_PIX_FMT_BAYER_GBRG16 = AV_PIX_FMT_NE(BAYER_GBRG16BE, BAYER_GBRG16LE)
    AV_PIX_FMT_BAYER_GRBG16 = AV_PIX_FMT_NE(BAYER_GRBG16BE, BAYER_GRBG16LE)
    AV_PIX_FMT_GBRPF32      = AV_PIX_FMT_NE(GBRPF32BE, GBRPF32LE)
    AV_PIX_FMT_GBRAPF32     = AV_PIX_FMT_NE(GBRAPF32BE, GBRAPF32LE)
    AV_PIX_FMT_YUVA420P9    = AV_PIX_FMT_NE(YUVA420P9BE, YUVA420P9LE)
    AV_PIX_FMT_YUVA422P9    = AV_PIX_FMT_NE(YUVA422P9BE, YUVA422P9LE)
    AV_PIX_FMT_YUVA444P9    = AV_PIX_FMT_NE(YUVA444P9BE, YUVA444P9LE)
    AV_PIX_FMT_YUVA420P10   = AV_PIX_FMT_NE(YUVA420P10BE, YUVA420P10LE)
    AV_PIX_FMT_YUVA422P10   = AV_PIX_FMT_NE(YUVA422P10BE, YUVA422P10LE)
    AV_PIX_FMT_YUVA444P10   = AV_PIX_FMT_NE(YUVA444P10BE, YUVA444P10LE)
    AV_PIX_FMT_YUVA420P16   = AV_PIX_FMT_NE(YUVA420P16BE, YUVA420P16LE)
    AV_PIX_FMT_YUVA422P16   = AV_PIX_FMT_NE(YUVA422P16BE, YUVA422P16LE)
    AV_PIX_FMT_YUVA444P16   = AV_PIX_FMT_NE(YUVA444P16BE, YUVA444P16LE)
    AV_PIX_FMT_XYZ12        = AV_PIX_FMT_NE(XYZ12BE, XYZ12LE)
    AV_PIX_FMT_NV20         = AV_PIX_FMT_NE(NV20BE, NV20LE)
    AV_PIX_FMT_AYUV64       = AV_PIX_FMT_NE(AYUV64BE, AYUV64LE)
    AV_PIX_FMT_P010         = AV_PIX_FMT_NE(P010BE, P010LE)
    AV_PIX_FMT_P016         = AV_PIX_FMT_NE(P016BE, P016LE)
    enum AVPixelFormat : LibC::Int
      AV_PIX_FMT_NONE            =  -1
      AV_PIX_FMT_YUV420P         =   0
      AV_PIX_FMT_YUYV422         =   1
      AV_PIX_FMT_RGB24           =   2
      AV_PIX_FMT_BGR24           =   3
      AV_PIX_FMT_YUV422P         =   4
      AV_PIX_FMT_YUV444P         =   5
      AV_PIX_FMT_YUV410P         =   6
      AV_PIX_FMT_YUV411P         =   7
      AV_PIX_FMT_GRAY8           =   8
      AV_PIX_FMT_MONOWHITE       =   9
      AV_PIX_FMT_MONOBLACK       =  10
      AV_PIX_FMT_PAL8            =  11
      AV_PIX_FMT_YUVJ420P        =  12
      AV_PIX_FMT_YUVJ422P        =  13
      AV_PIX_FMT_YUVJ444P        =  14
      AV_PIX_FMT_XVMC_MPEG2_MC   =  15
      AV_PIX_FMT_XVMC_MPEG2_IDCT =  16
      AV_PIX_FMT_XVMC            =  16
      AV_PIX_FMT_UYVY422         =  17
      AV_PIX_FMT_UYYVYY411       =  18
      AV_PIX_FMT_BGR8            =  19
      AV_PIX_FMT_BGR4            =  20
      AV_PIX_FMT_BGR4_BYTE       =  21
      AV_PIX_FMT_RGB8            =  22
      AV_PIX_FMT_RGB4            =  23
      AV_PIX_FMT_RGB4_BYTE       =  24
      AV_PIX_FMT_NV12            =  25
      AV_PIX_FMT_NV21            =  26
      AV_PIX_FMT_ARGB            =  27
      AV_PIX_FMT_RGBA            =  28
      AV_PIX_FMT_ABGR            =  29
      AV_PIX_FMT_BGRA            =  30
      AV_PIX_FMT_GRAY16BE        =  31
      AV_PIX_FMT_GRAY16LE        =  32
      AV_PIX_FMT_YUV440P         =  33
      AV_PIX_FMT_YUVJ440P        =  34
      AV_PIX_FMT_YUVA420P        =  35
      AV_PIX_FMT_VDPAU_H264      =  36
      AV_PIX_FMT_VDPAU_MPEG1     =  37
      AV_PIX_FMT_VDPAU_MPEG2     =  38
      AV_PIX_FMT_VDPAU_WMV3      =  39
      AV_PIX_FMT_VDPAU_VC1       =  40
      AV_PIX_FMT_RGB48BE         =  41
      AV_PIX_FMT_RGB48LE         =  42
      AV_PIX_FMT_RGB565BE        =  43
      AV_PIX_FMT_RGB565LE        =  44
      AV_PIX_FMT_RGB555BE        =  45
      AV_PIX_FMT_RGB555LE        =  46
      AV_PIX_FMT_BGR565BE        =  47
      AV_PIX_FMT_BGR565LE        =  48
      AV_PIX_FMT_BGR555BE        =  49
      AV_PIX_FMT_BGR555LE        =  50
      AV_PIX_FMT_VAAPI_MOCO      =  51
      AV_PIX_FMT_VAAPI_IDCT      =  52
      AV_PIX_FMT_VAAPI_VLD       =  53
      AV_PIX_FMT_VAAPI           =  53
      AV_PIX_FMT_YUV420P16LE     =  54
      AV_PIX_FMT_YUV420P16BE     =  55
      AV_PIX_FMT_YUV422P16LE     =  56
      AV_PIX_FMT_YUV422P16BE     =  57
      AV_PIX_FMT_YUV444P16LE     =  58
      AV_PIX_FMT_YUV444P16BE     =  59
      AV_PIX_FMT_VDPAU_MPEG4     =  60
      AV_PIX_FMT_DXVA2_VLD       =  61
      AV_PIX_FMT_RGB444LE        =  62
      AV_PIX_FMT_RGB444BE        =  63
      AV_PIX_FMT_BGR444LE        =  64
      AV_PIX_FMT_BGR444BE        =  65
      AV_PIX_FMT_YA8             =  66
      AV_PIX_FMT_Y400A           =  66
      AV_PIX_FMT_GRAY8A          =  66
      AV_PIX_FMT_BGR48BE         =  67
      AV_PIX_FMT_BGR48LE         =  68
      AV_PIX_FMT_YUV420P9BE      =  69
      AV_PIX_FMT_YUV420P9LE      =  70
      AV_PIX_FMT_YUV420P10BE     =  71
      AV_PIX_FMT_YUV420P10LE     =  72
      AV_PIX_FMT_YUV422P10BE     =  73
      AV_PIX_FMT_YUV422P10LE     =  74
      AV_PIX_FMT_YUV444P9BE      =  75
      AV_PIX_FMT_YUV444P9LE      =  76
      AV_PIX_FMT_YUV444P10BE     =  77
      AV_PIX_FMT_YUV444P10LE     =  78
      AV_PIX_FMT_YUV422P9BE      =  79
      AV_PIX_FMT_YUV422P9LE      =  80
      AV_PIX_FMT_VDA_VLD         =  81
      AV_PIX_FMT_GBRP            =  82
      AV_PIX_FMT_GBR24P          =  82
      AV_PIX_FMT_GBRP9BE         =  83
      AV_PIX_FMT_GBRP9LE         =  84
      AV_PIX_FMT_GBRP10BE        =  85
      AV_PIX_FMT_GBRP10LE        =  86
      AV_PIX_FMT_GBRP16BE        =  87
      AV_PIX_FMT_GBRP16LE        =  88
      AV_PIX_FMT_YUVA422P        =  89
      AV_PIX_FMT_YUVA444P        =  90
      AV_PIX_FMT_YUVA420P9BE     =  91
      AV_PIX_FMT_YUVA420P9LE     =  92
      AV_PIX_FMT_YUVA422P9BE     =  93
      AV_PIX_FMT_YUVA422P9LE     =  94
      AV_PIX_FMT_YUVA444P9BE     =  95
      AV_PIX_FMT_YUVA444P9LE     =  96
      AV_PIX_FMT_YUVA420P10BE    =  97
      AV_PIX_FMT_YUVA420P10LE    =  98
      AV_PIX_FMT_YUVA422P10BE    =  99
      AV_PIX_FMT_YUVA422P10LE    = 100
      AV_PIX_FMT_YUVA444P10BE    = 101
      AV_PIX_FMT_YUVA444P10LE    = 102
      AV_PIX_FMT_YUVA420P16BE    = 103
      AV_PIX_FMT_YUVA420P16LE    = 104
      AV_PIX_FMT_YUVA422P16BE    = 105
      AV_PIX_FMT_YUVA422P16LE    = 106
      AV_PIX_FMT_YUVA444P16BE    = 107
      AV_PIX_FMT_YUVA444P16LE    = 108
      AV_PIX_FMT_VDPAU           = 109
      AV_PIX_FMT_XYZ12LE         = 110
      AV_PIX_FMT_XYZ12BE         = 111
      AV_PIX_FMT_NV16            = 112
      AV_PIX_FMT_NV20LE          = 113
      AV_PIX_FMT_NV20BE          = 114
      AV_PIX_FMT_RGBA64BE        = 115
      AV_PIX_FMT_RGBA64LE        = 116
      AV_PIX_FMT_BGRA64BE        = 117
      AV_PIX_FMT_BGRA64LE        = 118
      AV_PIX_FMT_YVYU422         = 119
      AV_PIX_FMT_VDA             = 120
      AV_PIX_FMT_YA16BE          = 121
      AV_PIX_FMT_YA16LE          = 122
      AV_PIX_FMT_GBRAP           = 123
      AV_PIX_FMT_GBRAP16BE       = 124
      AV_PIX_FMT_GBRAP16LE       = 125
      AV_PIX_FMT_QSV             = 126
      AV_PIX_FMT_MMAL            = 127
      AV_PIX_FMT_D3D11VA_VLD     = 128
      AV_PIX_FMT_CUDA            = 129
      AV_PIX_FMT_0RGB            = 295
      AV_PIX_FMT_RGB0            = 296
      AV_PIX_FMT_0BGR            = 297
      AV_PIX_FMT_BGR0            = 298
      AV_PIX_FMT_YUV420P12BE     = 299
      AV_PIX_FMT_YUV420P12LE     = 300
      AV_PIX_FMT_YUV420P14BE     = 301
      AV_PIX_FMT_YUV420P14LE     = 302
      AV_PIX_FMT_YUV422P12BE     = 303
      AV_PIX_FMT_YUV422P12LE     = 304
      AV_PIX_FMT_YUV422P14BE     = 305
      AV_PIX_FMT_YUV422P14LE     = 306
      AV_PIX_FMT_YUV444P12BE     = 307
      AV_PIX_FMT_YUV444P12LE     = 308
      AV_PIX_FMT_YUV444P14BE     = 309
      AV_PIX_FMT_YUV444P14LE     = 310
      AV_PIX_FMT_GBRP12BE        = 311
      AV_PIX_FMT_GBRP12LE        = 312
      AV_PIX_FMT_GBRP14BE        = 313
      AV_PIX_FMT_GBRP14LE        = 314
      AV_PIX_FMT_YUVJ411P        = 315
      AV_PIX_FMT_BAYER_BGGR8     = 316
      AV_PIX_FMT_BAYER_RGGB8     = 317
      AV_PIX_FMT_BAYER_GBRG8     = 318
      AV_PIX_FMT_BAYER_GRBG8     = 319
      AV_PIX_FMT_BAYER_BGGR16LE  = 320
      AV_PIX_FMT_BAYER_BGGR16BE  = 321
      AV_PIX_FMT_BAYER_RGGB16LE  = 322
      AV_PIX_FMT_BAYER_RGGB16BE  = 323
      AV_PIX_FMT_BAYER_GBRG16LE  = 324
      AV_PIX_FMT_BAYER_GBRG16BE  = 325
      AV_PIX_FMT_BAYER_GRBG16LE  = 326
      AV_PIX_FMT_BAYER_GRBG16BE  = 327
      AV_PIX_FMT_YUV440P10LE     = 328
      AV_PIX_FMT_YUV440P10BE     = 329
      AV_PIX_FMT_YUV440P12LE     = 330
      AV_PIX_FMT_YUV440P12BE     = 331
      AV_PIX_FMT_AYUV64LE        = 332
      AV_PIX_FMT_AYUV64BE        = 333
      AV_PIX_FMT_VIDEOTOOLBOX    = 334
      AV_PIX_FMT_P010LE          = 335
      AV_PIX_FMT_P010BE          = 336
      AV_PIX_FMT_GBRAP12BE       = 337
      AV_PIX_FMT_GBRAP12LE       = 338
      AV_PIX_FMT_GBRAP10BE       = 339
      AV_PIX_FMT_GBRAP10LE       = 340
      AV_PIX_FMT_MEDIACODEC      = 341
      AV_PIX_FMT_GRAY12BE        = 342
      AV_PIX_FMT_GRAY12LE        = 343
      AV_PIX_FMT_GRAY10BE        = 344
      AV_PIX_FMT_GRAY10LE        = 345
      AV_PIX_FMT_P016LE          = 346
      AV_PIX_FMT_P016BE          = 347
      AV_PIX_FMT_D3D11           = 348
      AV_PIX_FMT_GRAY9BE         = 349
      AV_PIX_FMT_GRAY9LE         = 350
      AV_PIX_FMT_GBRPF32BE       = 351
      AV_PIX_FMT_GBRPF32LE       = 352
      AV_PIX_FMT_GBRAPF32BE      = 353
      AV_PIX_FMT_GBRAPF32LE      = 354
      AV_PIX_FMT_DRM_PRIME       = 355
      AV_PIX_FMT_NB              = 356
    end
    enum AVColorPrimaries : LibC::UInt
      AVCOL_PRI_RESERVED0    =  0
      AVCOL_PRI_BT709        =  1
      AVCOL_PRI_UNSPECIFIED  =  2
      AVCOL_PRI_RESERVED     =  3
      AVCOL_PRI_BT470M       =  4
      AVCOL_PRI_BT470BG      =  5
      AVCOL_PRI_SMPTE170M    =  6
      AVCOL_PRI_SMPTE240M    =  7
      AVCOL_PRI_FILM         =  8
      AVCOL_PRI_BT2020       =  9
      AVCOL_PRI_SMPTE428     = 10
      AVCOL_PRI_SMPTEST428_1 = 10
      AVCOL_PRI_SMPTE431     = 11
      AVCOL_PRI_SMPTE432     = 12
      AVCOL_PRI_JEDEC_P22    = 22
      AVCOL_PRI_NB           = 23
    end
    enum AVColorTransferCharacteristic : LibC::UInt
      AVCOL_TRC_RESERVED0    =  0
      AVCOL_TRC_BT709        =  1
      AVCOL_TRC_UNSPECIFIED  =  2
      AVCOL_TRC_RESERVED     =  3
      AVCOL_TRC_GAMMA22      =  4
      AVCOL_TRC_GAMMA28      =  5
      AVCOL_TRC_SMPTE170M    =  6
      AVCOL_TRC_SMPTE240M    =  7
      AVCOL_TRC_LINEAR       =  8
      AVCOL_TRC_LOG          =  9
      AVCOL_TRC_LOG_SQRT     = 10
      AVCOL_TRC_IEC61966_2_4 = 11
      AVCOL_TRC_BT1361_ECG   = 12
      AVCOL_TRC_IEC61966_2_1 = 13
      AVCOL_TRC_BT2020_10    = 14
      AVCOL_TRC_BT2020_12    = 15
      AVCOL_TRC_SMPTE2084    = 16
      AVCOL_TRC_SMPTEST2084  = 16
      AVCOL_TRC_SMPTE428     = 17
      AVCOL_TRC_SMPTEST428_1 = 17
      AVCOL_TRC_ARIB_STD_B67 = 18
      AVCOL_TRC_NB           = 19
    end
    enum AVColorSpace : LibC::UInt
      AVCOL_SPC_RGB                =  0
      AVCOL_SPC_BT709              =  1
      AVCOL_SPC_UNSPECIFIED        =  2
      AVCOL_SPC_RESERVED           =  3
      AVCOL_SPC_FCC                =  4
      AVCOL_SPC_BT470BG            =  5
      AVCOL_SPC_SMPTE170M          =  6
      AVCOL_SPC_SMPTE240M          =  7
      AVCOL_SPC_YCGCO              =  8
      AVCOL_SPC_YCOCG              =  8
      AVCOL_SPC_BT2020_NCL         =  9
      AVCOL_SPC_BT2020_CL          = 10
      AVCOL_SPC_SMPTE2085          = 11
      AVCOL_SPC_CHROMA_DERIVED_NCL = 12
      AVCOL_SPC_CHROMA_DERIVED_CL  = 13
      AVCOL_SPC_ICTCP              = 14
      AVCOL_SPC_NB                 = 15
    end
    enum AVColorRange : LibC::UInt
      AVCOL_RANGE_UNSPECIFIED = 0
      AVCOL_RANGE_MPEG        = 1
      AVCOL_RANGE_JPEG        = 2
      AVCOL_RANGE_NB          = 3
    end
    enum AVChromaLocation : LibC::UInt
      AVCHROMA_LOC_UNSPECIFIED = 0
      AVCHROMA_LOC_LEFT        = 1
      AVCHROMA_LOC_CENTER      = 2
      AVCHROMA_LOC_TOPLEFT     = 3
      AVCHROMA_LOC_TOP         = 4
      AVCHROMA_LOC_BOTTOMLEFT  = 5
      AVCHROMA_LOC_BOTTOM      = 6
      AVCHROMA_LOC_NB          = 7
    end
  end
end
