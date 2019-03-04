require "./libavutil/avutil"
require "./libavutil/rational"
require "./libavutil/log"
require "./libavutil/pixfmt"
require "./libavutil/frame"

module AV
  @[Link("avcodec")]
  lib LibAVCodec
    #   AVCODEC_AVCODEC_H =
    IFF_BYTERUN1 = IFF_ILBM
    H265         = HEVC
    enum CodecProp
      INTRA_ONLY = 1 << 0
      LOSSY      = 1 << 1
      LOSSLESS   = 1 << 2
      REORDER    = 1 << 3
      BITMAP_SUB = 1 << 16
      TEXT_SUB   = 1 << 17
    end
    AV_INPUT_BUFFER_PADDING_SIZE =    32
    AV_INPUT_BUFFER_MIN_SIZE     = 16384
    FF_INPUT_BUFFER_PADDING_SIZE =    32
    FF_MIN_BUFFER_SIZE           = 16384
    FF_MAX_B_FRAMES              =    16
    enum AVCodecFlag
      UNALIGNED      = 1 << 0
      QSCALE         = 1 << 1
      FLAG_4MV       = 1 << 2
      OUTPUT_CORRUPT = 1 << 3
      QPEL           = 1 << 4
      PASS1          = 1 << 9
      PASS2          = 1 << 10
      LOOP_FILTER    = 1 << 11
      GRAY           = 1 << 13
      PSNR           = 1 << 15
      TRUNCATED      = 1 << 16
      INTERLACED_DCT = 1 << 18
      LOW_DELAY      = 1 << 19
      GLOBAL_HEADER  = 1 << 22
      BITEXACT       = 1 << 23
      AC_PRED        = 1 << 24
      INTERLACED_ME  = 1 << 29
      CLOSED_GOP     = 1_u32 << 31
    end
    enum AVCodecFlag2
      FAST                = 1 << 0
      NO_OUTPUT           = 1 << 2
      LOCAL_HEADER        = 1 << 3
      DROP_FRAME_TIMECODE = 1 << 13
      CHUNKS              = 1 << 15
      IGNORE_CROP         = 1 << 16
      SHOW_ALL            = 1 << 22
      EXPORT_MVS          = 1 << 28
      SKIP_MANUAL         = 1 << 29
      RO_FLUSH_NOOP       = 1 << 30
    end
    enum AVCodecCap : UInt64
      DRAW_HORIZ_BAND     = 1 << 0
      DR1                 = 1 << 1
      TRUNCATED           = 1 << 3
      DELAY               = 1 << 5
      SMALL_LAST_FRAME    = 1 << 6
      HWACCEL_VDPAU       = 1 << 7
      SUBFRAMES           = 1 << 8
      EXPERIMENTAL        = 1 << 9
      CHANNEL_CONF        = 1 << 10
      FRAME_THREADS       = 1 << 12
      SLICE_THREADS       = 1 << 13
      PARAM_CHANGE        = 1 << 14
      AUTO_THREADS        = 1 << 15
      VARIABLE_FRAME_SIZE = 1 << 16
      AVOID_PROBING       = 1 << 17
      INTRA_ONLY          = 0x40000000
      LOSSLESS            = 0x80000000_i64
    end
    enum CodecFlag
      UNALIGNED       = AVCodecFlag::UNALIGNED
      QSCALE          = AVCodecFlag::QSCALE
      FLAG_4MV        = AVCodecFlag::FLAG_4MV
      OUTPUT_CORRUPT  = AVCodecFlag::OUTPUT_CORRUPT
      QPEL            = AVCodecFlag::QPEL
      GMC             = 0x0020
      MV0             = 0x0040
      INPUT_PRESERVED = 0x0100
      PASS1           = AVCodecFlag::PASS1
      PASS2           = AVCodecFlag::PASS2
      GRAY            = AVCodecFlag::GRAY
      EMU_EDGE        = 0x4000
      PSNR            = AVCodecFlag::PSNR
      TRUNCATED       = AVCodecFlag::TRUNCATED
      NORMALIZE_AQP   = 0x00020000
      INTERLACED_DCT  = AVCodecFlag::INTERLACED_DCT
      LOW_DELAY       = AVCodecFlag::LOW_DELAY
      GLOBAL_HEADER   = AVCodecFlag::GLOBAL_HEADER
      BITEXACT        = AVCodecFlag::BITEXACT
      AC_PRED         = AVCodecFlag::AC_PRED
      LOOP_FILTER     = AVCodecFlag::LOOP_FILTER
      INTERLACED_ME   = AVCodecFlag::INTERLACED_ME
      CLOSED_GOP      = AVCodecFlag::CLOSED_GOP
    end
    enum CodecFlag2
      FAST                = AVCodecFlag2::FAST
      NO_OUTPUT           = AVCodecFlag2::NO_OUTPUT
      LOCAL_HEADER        = AVCodecFlag2::LOCAL_HEADER
      DROP_FRAME_TIMECODE = AVCodecFlag2::DROP_FRAME_TIMECODE
      IGNORE_CROP         = AVCodecFlag2::IGNORE_CROP
      CHUNKS              = AVCodecFlag2::CHUNKS
      SHOW_ALL            = AVCodecFlag2::SHOW_ALL
      EXPORT_MVS          = AVCodecFlag2::EXPORT_MVS
      SKIP_MANUAL         = AVCodecFlag2::SKIP_MANUAL
    end
    enum CodecCap : Int64
      DRAW_HORIZ_BAND     = AVCodecCap::DRAW_HORIZ_BAND
      DR1                 = AVCodecCap::DR1
      TRUNCATED           = AVCodecCap::TRUNCATED
      HWACCEL             = 0x0010
      DELAY               = AVCodecCap::DELAY
      SMALL_LAST_FRAME    = AVCodecCap::SMALL_LAST_FRAME
      HWACCEL_VDPAU       = AVCodecCap::HWACCEL_VDPAU
      SUBFRAMES           = AVCodecCap::SUBFRAMES
      EXPERIMENTAL        = AVCodecCap::EXPERIMENTAL
      CHANNEL_CONF        = AVCodecCap::CHANNEL_CONF
      NEG_LINESIZES       = 0x0800
      FRAME_THREADS       = AVCodecCap::FRAME_THREADS
      SLICE_THREADS       = AVCodecCap::SLICE_THREADS
      PARAM_CHANGE        = AVCodecCap::PARAM_CHANGE
      AUTO_THREADS        = AVCodecCap::AUTO_THREADS
      VARIABLE_FRAME_SIZE = AVCodecCap::VARIABLE_FRAME_SIZE
      INTRA_ONLY          = AVCodecCap::INTRA_ONLY
      LOSSLESS            = AVCodecCap::LOSSLESS
    end
    HWACCEL_CODEC_CAP_EXPERIMENTAL = 0x0200
    @[Flags]
    enum MBType
      T_INTRA4x4   = 0x0001
      T_INTRA16x16
      T_INTRA_PCM
      T_16x16
      T_16x8
      T_8x16
      T_8x8
      T_INTERLACED
      T_DIRECT2
      T_ACPRED
      T_GMC
      T_SKIP
      T_P0L0
      T_P1L0
      T_P0L1
      T_P1L1
      T_L0         = T_P0L0 | T_P1L0
      T_L1         = T_P0L1 | T_P1L1
      T_L0L1       = T_L0 | T_L1
      T_QUANT      = 0x00010000
      T_CBP        = 0x00020000
    end
    FF_QSCALE_TYPE_MPEG1       = 0o0
    FF_QSCALE_TYPE_MPEG2       =   1
    FF_QSCALE_TYPE_H264        =   2
    FF_QSCALE_TYPE_VP56        =   3
    AV_GET_BUFFER_FLAG_REF     = 1 << 0
    AV_PKT_DATA_QUALITY_FACTOR = AV_PKT_DATA_QUALITY_STATS
    AV_PKT_FLAG_KEY            = 0x0001
    AV_PKT_FLAG_CORRUPT        = 0x0002
    AV_PKT_FLAG_DISCARD        = 0x0004
    AV_PKT_FLAG_TRUSTED        = 0x0008
    FF_COMPRESSION_DEFAULT     =     -1
    FF_ASPECT_EXTENDED         =     15
    FF_RC_STRATEGY_XVID        =      1
    FF_PRED_LEFT               =    0o0
    FF_PRED_PLANE              =      1
    FF_PRED_MEDIAN             =      2
    FF_CMP_SAD                 =    0o0
    FF_CMP_SSE                 =      1
    FF_CMP_SATD                =      2
    FF_CMP_DCT                 =      3
    FF_CMP_PSNR                =      4
    FF_CMP_BIT                 =      5
    FF_CMP_RD                  =      6
    FF_CMP_ZERO                =      7
    FF_CMP_VSAD                =      8
    FF_CMP_VSSE                =      9
    FF_CMP_NSSE                =     10
    FF_CMP_W53                 =     11
    FF_CMP_W97                 =     12
    FF_CMP_DCTMAX              =     13
    FF_CMP_DCT264              =     14
    FF_CMP_MEDIAN_SAD          =     15
    FF_CMP_CHROMA              =    256
    FF_DTG_AFD_SAME            =      8
    FF_DTG_AFD_4_3             =      9
    FF_DTG_AFD_16_9            =     10
    FF_DTG_AFD_14_9            =     11
    FF_DTG_AFD_4_3_SP_14_9     =     13
    FF_DTG_AFD_16_9_SP_14_9    =     14
    FF_DTG_AFD_SP_4_3          =     15
    FF_DEFAULT_QUANT_BIAS      = 999999
    SLICE_FLAG_CODED_ORDER     = 0x0001
    SLICE_FLAG_ALLOW_FIELD     = 0x0002
    SLICE_FLAG_ALLOW_PLANE     = 0x0004
    FF_MB_DECISION_SIMPLE      =    0o0
    FF_MB_DECISION_BITS        =      1
    FF_MB_DECISION_RD          =      2
    FF_CODER_TYPE_VLC          =    0o0
    FF_CODER_TYPE_AC           =      1
    FF_CODER_TYPE_RAW          =      2
    FF_CODER_TYPE_RLE          =      3
    FF_CODER_TYPE_DEFLATE      =      4
    FF_BUG_AUTODETECT          =      1
    FF_BUG_OLD_MSMPEG4         =      2
    FF_BUG_XVID_ILACE          =      4
    FF_BUG_UMP4                =      8
    FF_BUG_NO_PADDING          =     16
    FF_BUG_AMV                 =     32
    FF_BUG_AC_VLC              =    0o0
    FF_BUG_QPEL_CHROMA         =     64
    FF_BUG_STD_QPEL            =    128
    FF_BUG_QPEL_CHROMA2        =    256
    FF_BUG_DIRECT_BLOCKSIZE    =    512
    FF_BUG_EDGE                =   1024
    FF_BUG_HPEL_CHROMA         =   2048
    FF_BUG_DC_CLIP             =   4096
    FF_BUG_MS                  =   8192
    FF_BUG_TRUNCATED           =  16384
    FF_BUG_IEDGE               =  32768
    FF_COMPLIANCE_VERY_STRICT  =      2
    FF_COMPLIANCE_STRICT       =      1
    FF_COMPLIANCE_NORMAL       =    0o0
    FF_COMPLIANCE_UNOFFICIAL   =     -1
    FF_COMPLIANCE_EXPERIMENTAL =     -2
    FF_EC_GUESS_MVS            =      1
    FF_EC_DEBLOCK              =      2
    FF_EC_FAVOR_INTER          =    256
    @[Flags]
    enum FFDebug
      PICT_INFO     =          1
      RC            =          2
      BITSTREAM     =          4
      MB_TYPE       =          8
      QP            =         16
      MV            =         32
      DCT_COEFF     = 0x00000040
      SKIP          = 0x00000080
      STARTCODE     = 0x00000100
      PTS           = 0x00000200
      ER            = 0x00000400
      MMCO          = 0x00000800
      BUGS          = 0x00001000
      VIS_QP        = 0x00002000
      VIS_MB_TYPE   = 0x00004000
      BUFFERS       = 0x00008000
      THREADS       = 0x00010000
      GREEN_MD      = 0x00800000
      NOMC          = 0x01000000
      VIS_MV_P_FOR  = 0x00000001
      VIS_MV_B_FOR  = 0x00000002
      VIS_MV_B_BACK = 0x00000004
    end
    AV_EF_CRCCHECK                             = 1 << 0
    AV_EF_BITSTREAM                            = 1 << 1
    AV_EF_BUFFER                               = 1 << 2
    AV_EF_EXPLODE                              = 1 << 3
    AV_EF_IGNORE_ERR                           = 1 << 15
    AV_EF_CAREFUL                              = 1 << 16
    AV_EF_COMPLIANT                            = 1 << 17
    AV_EF_AGGRESSIVE                           = 1 << 18
    FF_DCT_AUTO                                =  0o0
    FF_DCT_FASTINT                             =    1
    FF_DCT_INT                                 =    2
    FF_DCT_MMX                                 =    3
    FF_DCT_ALTIVEC                             =    5
    FF_DCT_FAAN                                =    6
    FF_IDCT_AUTO                               =  0o0
    FF_IDCT_INT                                =    1
    FF_IDCT_SIMPLE                             =    2
    FF_IDCT_SIMPLEMMX                          =    3
    FF_IDCT_ARM                                =    7
    FF_IDCT_ALTIVEC                            =    8
    FF_IDCT_SH4                                =    9
    FF_IDCT_SIMPLEARM                          =   10
    FF_IDCT_IPP                                =   13
    FF_IDCT_XVID                               =   14
    FF_IDCT_XVIDMMX                            =   14
    FF_IDCT_SIMPLEARMV5TE                      =   16
    FF_IDCT_SIMPLEARMV6                        =   17
    FF_IDCT_SIMPLEVIS                          =   18
    FF_IDCT_FAAN                               =   20
    FF_IDCT_SIMPLENEON                         =   22
    FF_IDCT_SIMPLEALPHA                        =   23
    FF_IDCT_NONE                               =   24
    FF_IDCT_SIMPLEAUTO                         =  128
    FF_THREAD_FRAME                            =    1
    FF_THREAD_SLICE                            =    2
    FF_PROFILE_UNKNOWN                         =  -99
    FF_PROFILE_RESERVED                        = -100
    FF_PROFILE_AAC_MAIN                        =  0o0
    FF_PROFILE_AAC_LOW                         =    1
    FF_PROFILE_AAC_SSR                         =    2
    FF_PROFILE_AAC_LTP                         =    3
    FF_PROFILE_AAC_HE                          =    4
    FF_PROFILE_AAC_HE_V2                       =   28
    FF_PROFILE_AAC_LD                          =   22
    FF_PROFILE_AAC_ELD                         =   38
    FF_PROFILE_MPEG2_AAC_LOW                   =  128
    FF_PROFILE_MPEG2_AAC_HE                    =  131
    FF_PROFILE_DNXHD                           =  0o0
    FF_PROFILE_DNXHR_LB                        =    1
    FF_PROFILE_DNXHR_SQ                        =    2
    FF_PROFILE_DNXHR_HQ                        =    3
    FF_PROFILE_DNXHR_HQX                       =    4
    FF_PROFILE_DNXHR_444                       =    5
    FF_PROFILE_DTS                             =   20
    FF_PROFILE_DTS_ES                          =   30
    FF_PROFILE_DTS_96_24                       =   40
    FF_PROFILE_DTS_HD_HRA                      =   50
    FF_PROFILE_DTS_HD_MA                       =   60
    FF_PROFILE_DTS_EXPRESS                     =   70
    FF_PROFILE_MPEG2_422                       =  0o0
    FF_PROFILE_MPEG2_HIGH                      =    1
    FF_PROFILE_MPEG2_SS                        =    2
    FF_PROFILE_MPEG2_SNR_SCALABLE              =    3
    FF_PROFILE_MPEG2_MAIN                      =    4
    FF_PROFILE_MPEG2_SIMPLE                    =    5
    FF_PROFILE_H264_CONSTRAINED                = 1 << 9
    FF_PROFILE_H264_INTRA                      = 1 << 11
    FF_PROFILE_H264_BASELINE                   = 66
    FF_PROFILE_H264_CONSTRAINED_BASELINE       = 66 | FF_PROFILE_H264_CONSTRAINED
    FF_PROFILE_H264_MAIN                       =  77
    FF_PROFILE_H264_EXTENDED                   =  88
    FF_PROFILE_H264_HIGH                       = 100
    FF_PROFILE_H264_HIGH_10                    = 110
    FF_PROFILE_H264_HIGH_10_INTRA              = 110 | FF_PROFILE_H264_INTRA
    FF_PROFILE_H264_MULTIVIEW_HIGH             = 118
    FF_PROFILE_H264_HIGH_422                   = 122
    FF_PROFILE_H264_HIGH_422_INTRA             = 122 | FF_PROFILE_H264_INTRA
    FF_PROFILE_H264_STEREO_HIGH                = 128
    FF_PROFILE_H264_HIGH_444                   = 144
    FF_PROFILE_H264_HIGH_444_PREDICTIVE        = 244
    FF_PROFILE_H264_HIGH_444_INTRA             = 244 | FF_PROFILE_H264_INTRA
    FF_PROFILE_H264_CAVLC_444                  =         44
    FF_PROFILE_VC1_SIMPLE                      =        0o0
    FF_PROFILE_VC1_MAIN                        =          1
    FF_PROFILE_VC1_COMPLEX                     =          2
    FF_PROFILE_VC1_ADVANCED                    =          3
    FF_PROFILE_MPEG4_SIMPLE                    =        0o0
    FF_PROFILE_MPEG4_SIMPLE_SCALABLE           =          1
    FF_PROFILE_MPEG4_CORE                      =          2
    FF_PROFILE_MPEG4_MAIN                      =          3
    FF_PROFILE_MPEG4_N_BIT                     =          4
    FF_PROFILE_MPEG4_SCALABLE_TEXTURE          =          5
    FF_PROFILE_MPEG4_SIMPLE_FACE_ANIMATION     =          6
    FF_PROFILE_MPEG4_BASIC_ANIMATED_TEXTURE    =          7
    FF_PROFILE_MPEG4_HYBRID                    =          8
    FF_PROFILE_MPEG4_ADVANCED_REAL_TIME        =          9
    FF_PROFILE_MPEG4_CORE_SCALABLE             =         10
    FF_PROFILE_MPEG4_ADVANCED_CODING           =         11
    FF_PROFILE_MPEG4_ADVANCED_CORE             =         12
    FF_PROFILE_MPEG4_ADVANCED_SCALABLE_TEXTURE =         13
    FF_PROFILE_MPEG4_SIMPLE_STUDIO             =         14
    FF_PROFILE_MPEG4_ADVANCED_SIMPLE           =         15
    FF_PROFILE_JPEG2000_CSTREAM_RESTRICTION_0  =          1
    FF_PROFILE_JPEG2000_CSTREAM_RESTRICTION_1  =          2
    FF_PROFILE_JPEG2000_CSTREAM_NO_RESTRICTION =      32768
    FF_PROFILE_JPEG2000_DCINEMA_2K             =          3
    FF_PROFILE_JPEG2000_DCINEMA_4K             =          4
    FF_PROFILE_VP9_0                           =        0o0
    FF_PROFILE_VP9_1                           =          1
    FF_PROFILE_VP9_2                           =          2
    FF_PROFILE_VP9_3                           =          3
    FF_PROFILE_HEVC_MAIN                       =          1
    FF_PROFILE_HEVC_MAIN_10                    =          2
    FF_PROFILE_HEVC_MAIN_STILL_PICTURE         =          3
    FF_PROFILE_HEVC_REXT                       =          4
    FF_LEVEL_UNKNOWN                           =        -99
    FF_SUB_CHARENC_MODE_DO_NOTHING             =         -1
    FF_SUB_CHARENC_MODE_AUTOMATIC              =        0o0
    FF_SUB_CHARENC_MODE_PRE_DECODER            =          1
    FF_CODEC_PROPERTY_LOSSLESS                 = 0x00000001
    FF_CODEC_PROPERTY_CLOSED_CAPTIONS          = 0x00000002
    FF_SUB_TEXT_FMT_ASS                        =        0o0
    FF_SUB_TEXT_FMT_ASS_WITH_TIMINGS           =          1
    AV_HWACCEL_CODEC_CAP_EXPERIMENTAL          =     0x0200
    AV_HWACCEL_FLAG_IGNORE_LEVEL               = 1 << 0
    AV_HWACCEL_FLAG_ALLOW_HIGH_DEPTH           = 1 << 1
    AV_HWACCEL_FLAG_ALLOW_PROFILE_MISMATCH     = 1 << 2
    AV_SUBTITLE_FLAG_FORCED                    = 0x00000001
    AV_PARSER_PTS_NB                           =          4
    @[Flags]
    enum ParserFlag
      COMPLETE_FRAMES = 0x0001
      ONCE            = 0x0002
      FETCHED_OFFSET  = 0x0004
      USE_CODEC_TS    = 0x1000
    end
    enum CodecID : LibC::UInt
      NONE               =      0
      MPEG1VIDEO         =      1
      MPEG2VIDEO         =      2
      MPEG2VIDEO_XVMC    =      3
      H261               =      4
      H263               =      5
      RV10               =      6
      RV20               =      7
      MJPEG              =      8
      MJPEGB             =      9
      LJPEG              =     10
      SP5X               =     11
      JPEGLS             =     12
      MPEG4              =     13
      RAWVIDEO           =     14
      MSMPEG4V1          =     15
      MSMPEG4V2          =     16
      MSMPEG4V3          =     17
      WMV1               =     18
      WMV2               =     19
      H263P              =     20
      H263I              =     21
      FLV1               =     22
      SVQ1               =     23
      SVQ3               =     24
      DVVIDEO            =     25
      HUFFYUV            =     26
      CYUV               =     27
      H264               =     28
      INDEO3             =     29
      VP3                =     30
      THEORA             =     31
      ASV1               =     32
      ASV2               =     33
      FFV1               =     34
      ID_4XM             =     35
      VCR1               =     36
      CLJR               =     37
      MDEC               =     38
      ROQ                =     39
      INTERPLAY_VIDEO    =     40
      XAN_WC3            =     41
      XAN_WC4            =     42
      RPZA               =     43
      CINEPAK            =     44
      WS_VQA             =     45
      MSRLE              =     46
      MSVIDEO1           =     47
      IDCIN              =     48
      ID_8BPS            =     49
      SMC                =     50
      FLIC               =     51
      TRUEMOTION1        =     52
      VMDVIDEO           =     53
      MSZH               =     54
      ZLIB               =     55
      QTRLE              =     56
      TSCC               =     57
      ULTI               =     58
      QDRAW              =     59
      VIXL               =     60
      QPEG               =     61
      PNG                =     62
      PPM                =     63
      PBM                =     64
      PGM                =     65
      PGMYUV             =     66
      PAM                =     67
      FFVHUFF            =     68
      RV30               =     69
      RV40               =     70
      VC1                =     71
      WMV3               =     72
      LOCO               =     73
      WNV1               =     74
      AASC               =     75
      INDEO2             =     76
      FRAPS              =     77
      TRUEMOTION2        =     78
      BMP                =     79
      CSCD               =     80
      MMVIDEO            =     81
      ZMBV               =     82
      AVS                =     83
      SMACKVIDEO         =     84
      NUV                =     85
      KMVC               =     86
      FLASHSV            =     87
      CAVS               =     88
      JPEG2000           =     89
      VMNC               =     90
      VP5                =     91
      VP6                =     92
      VP6F               =     93
      TARGA              =     94
      DSICINVIDEO        =     95
      TIERTEXSEQVIDEO    =     96
      TIFF               =     97
      GIF                =     98
      DXA                =     99
      DNXHD              =    100
      THP                =    101
      SGI                =    102
      C93                =    103
      BETHSOFTVID        =    104
      PTX                =    105
      TXD                =    106
      VP6A               =    107
      AMV                =    108
      VB                 =    109
      PCX                =    110
      SUNRAST            =    111
      INDEO4             =    112
      INDEO5             =    113
      MIMIC              =    114
      RL2                =    115
      ESCAPE124          =    116
      DIRAC              =    117
      BFI                =    118
      CMV                =    119
      MOTIONPIXELS       =    120
      TGV                =    121
      TGQ                =    122
      TQI                =    123
      AURA               =    124
      AURA2              =    125
      V210X              =    126
      TMV                =    127
      V210               =    128
      DPX                =    129
      MAD                =    130
      FRWU               =    131
      FLASHSV2           =    132
      CDGRAPHICS         =    133
      R210               =    134
      ANM                =    135
      BINKVIDEO          =    136
      IFF_ILBM           =    137
      KGV1               =    138
      YOP                =    139
      VP8                =    140
      PICTOR             =    141
      ANSI               =    142
      A64_MULTI          =    143
      A64_MULTI5         =    144
      R10K               =    145
      MXPEG              =    146
      LAGARITH           =    147
      PRORES             =    148
      JV                 =    149
      DFA                =    150
      WMV3IMAGE          =    151
      VC1IMAGE           =    152
      UTVIDEO            =    153
      BMV_VIDEO          =    154
      VBLE               =    155
      DXTORY             =    156
      V410               =    157
      XWD                =    158
      CDXL               =    159
      XBM                =    160
      ZEROCODEC          =    161
      MSS1               =    162
      MSA1               =    163
      TSCC2              =    164
      MTS2               =    165
      CLLC               =    166
      MSS2               =    167
      VP9                =    168
      AIC                =    169
      ESCAPE130          =    170
      G2M                =    171
      WEBP               =    172
      HNM4_VIDEO         =    173
      HEVC               =    174
      FIC                =    175
      ALIAS_PIX          =    176
      BRENDER_PIX        =    177
      PAF_VIDEO          =    178
      EXR                =    179
      VP7                =    180
      SANM               =    181
      SGIRLE             =    182
      MVC1               =    183
      MVC2               =    184
      HQX                =    185
      TDSC               =    186
      HQ_HQA             =    187
      HAP                =    188
      DDS                =    189
      DXV                =    190
      SCREENPRESSO       =    191
      RSCC               =    192
      Y41P               =  32768
      AVRP               =  32769
      ID_012V            =  32770
      AVUI               =  32771
      AYUV               =  32772
      TARGA_Y216         =  32773
      V308               =  32774
      V408               =  32775
      YUV4               =  32776
      AVRN               =  32777
      CPIA               =  32778
      XFACE              =  32779
      SNOW               =  32780
      SMVJPEG            =  32781
      APNG               =  32782
      DAALA              =  32783
      CFHD               =  32784
      TRUEMOTION2RT      =  32785
      M101               =  32786
      MAGICYUV           =  32787
      SHEERVIDEO         =  32788
      YLC                =  32789
      PSD                =  32790
      PIXLET             =  32791
      SPEEDHQ            =  32792
      FMVC               =  32793
      SCPR               =  32794
      CLEARVIDEO         =  32795
      XPM                =  32796
      AV1                =  32797
      BITPACKED          =  32798
      MSCC               =  32799
      SRGC               =  32800
      SVG                =  32801
      GDV                =  32802
      FITS               =  32803
      FIRST_AUDIO        =  65536
      PCM_S16LE          =  65536
      PCM_S16BE          =  65537
      PCM_U16LE          =  65538
      PCM_U16BE          =  65539
      PCM_S8             =  65540
      PCM_U8             =  65541
      PCM_MULAW          =  65542
      PCM_ALAW           =  65543
      PCM_S32LE          =  65544
      PCM_S32BE          =  65545
      PCM_U32LE          =  65546
      PCM_U32BE          =  65547
      PCM_S24LE          =  65548
      PCM_S24BE          =  65549
      PCM_U24LE          =  65550
      PCM_U24BE          =  65551
      PCM_S24DAUD        =  65552
      PCM_ZORK           =  65553
      PCM_S16LE_PLANAR   =  65554
      PCM_DVD            =  65555
      PCM_F32BE          =  65556
      PCM_F32LE          =  65557
      PCM_F64BE          =  65558
      PCM_F64LE          =  65559
      PCM_BLURAY         =  65560
      PCM_LXF            =  65561
      S302M              =  65562
      PCM_S8_PLANAR      =  65563
      PCM_S24LE_PLANAR   =  65564
      PCM_S32LE_PLANAR   =  65565
      PCM_S16BE_PLANAR   =  65566
      PCM_S64LE          =  67584
      PCM_S64BE          =  67585
      PCM_F16LE          =  67586
      PCM_F24LE          =  67587
      ADPCM_IMA_QT       =  69632
      ADPCM_IMA_WAV      =  69633
      ADPCM_IMA_DK3      =  69634
      ADPCM_IMA_DK4      =  69635
      ADPCM_IMA_WS       =  69636
      ADPCM_IMA_SMJPEG   =  69637
      ADPCM_MS           =  69638
      ADPCM_4XM          =  69639
      ADPCM_XA           =  69640
      ADPCM_ADX          =  69641
      ADPCM_EA           =  69642
      ADPCM_G726         =  69643
      ADPCM_CT           =  69644
      ADPCM_SWF          =  69645
      ADPCM_YAMAHA       =  69646
      ADPCM_SBPRO_4      =  69647
      ADPCM_SBPRO_3      =  69648
      ADPCM_SBPRO_2      =  69649
      ADPCM_THP          =  69650
      ADPCM_IMA_AMV      =  69651
      ADPCM_EA_R1        =  69652
      ADPCM_EA_R3        =  69653
      ADPCM_EA_R2        =  69654
      ADPCM_IMA_EA_SEAD  =  69655
      ADPCM_IMA_EA_EACS  =  69656
      ADPCM_EA_XAS       =  69657
      ADPCM_EA_MAXIS_XA  =  69658
      ADPCM_IMA_ISS      =  69659
      ADPCM_G722         =  69660
      ADPCM_IMA_APC      =  69661
      ADPCM_VIMA         =  69662
      VIMA               =  69662
      ADPCM_AFC          =  71680
      ADPCM_IMA_OKI      =  71681
      ADPCM_DTK          =  71682
      ADPCM_IMA_RAD      =  71683
      ADPCM_G726LE       =  71684
      ADPCM_THP_LE       =  71685
      ADPCM_PSX          =  71686
      ADPCM_AICA         =  71687
      ADPCM_IMA_DAT4     =  71688
      ADPCM_MTAF         =  71689
      AMR_NB             =  73728
      AMR_WB             =  73729
      RA_144             =  77824
      RA_288             =  77825
      ROQ_DPCM           =  81920
      INTERPLAY_DPCM     =  81921
      XAN_DPCM           =  81922
      SOL_DPCM           =  81923
      SDX2_DPCM          =  83968
      GREMLIN_DPCM       =  83969
      MP2                =  86016
      MP3                =  86017
      AAC                =  86018
      AC3                =  86019
      DTS                =  86020
      VORBIS             =  86021
      DVAUDIO            =  86022
      WMAV1              =  86023
      WMAV2              =  86024
      MACE3              =  86025
      MACE6              =  86026
      VMDAUDIO           =  86027
      FLAC               =  86028
      MP3ADU             =  86029
      MP3ON4             =  86030
      SHORTEN            =  86031
      ALAC               =  86032
      WESTWOOD_SND1      =  86033
      GSM                =  86034
      QDM2               =  86035
      COOK               =  86036
      TRUESPEECH         =  86037
      TTA                =  86038
      SMACKAUDIO         =  86039
      QCELP              =  86040
      WAVPACK            =  86041
      DSICINAUDIO        =  86042
      IMC                =  86043
      MUSEPACK7          =  86044
      MLP                =  86045
      GSM_MS             =  86046
      ATRAC3             =  86047
      VOXWARE            =  86048
      APE                =  86049
      NELLYMOSER         =  86050
      MUSEPACK8          =  86051
      SPEEX              =  86052
      WMAVOICE           =  86053
      WMAPRO             =  86054
      WMALOSSLESS        =  86055
      ATRAC3P            =  86056
      EAC3               =  86057
      SIPR               =  86058
      MP1                =  86059
      TWINVQ             =  86060
      TRUEHD             =  86061
      MP4ALS             =  86062
      ATRAC1             =  86063
      BINKAUDIO_RDFT     =  86064
      BINKAUDIO_DCT      =  86065
      AAC_LATM           =  86066
      QDMC               =  86067
      CELT               =  86068
      G723_1             =  86069
      G729               =  86070
      ID_8SVX_EXP        =  86071
      ID_8SVX_FIB        =  86072
      BMV_AUDIO          =  86073
      RALF               =  86074
      IAC                =  86075
      ILBC               =  86076
      OPUS               =  86077
      COMFORT_NOISE      =  86078
      TAK                =  86079
      METASOUND          =  86080
      PAF_AUDIO          =  86081
      ON2AVC             =  86082
      DSS_SP             =  86083
      FFWAVESYNTH        =  88064
      SONIC              =  88065
      SONIC_LS           =  88066
      EVRC               =  88067
      SMV                =  88068
      DSD_LSBF           =  88069
      DSD_MSBF           =  88070
      DSD_LSBF_PLANAR    =  88071
      DSD_MSBF_PLANAR    =  88072
      ID_4GV             =  88073
      INTERPLAY_ACM      =  88074
      XMA1               =  88075
      XMA2               =  88076
      DST                =  88077
      ATRAC3AL           =  88078
      ATRAC3PAL          =  88079
      DOLBY_E            =  88080
      FIRST_SUBTITLE     =  94208
      DVD_SUBTITLE       =  94208
      DVB_SUBTITLE       =  94209
      TEXT               =  94210
      XSUB               =  94211
      SSA                =  94212
      MOV_TEXT           =  94213
      HDMV_PGS_SUBTITLE  =  94214
      DVB_TELETEXT       =  94215
      SRT                =  94216
      MICRODVD           =  96256
      EIA_608            =  96257
      JACOSUB            =  96258
      SAMI               =  96259
      REALTEXT           =  96260
      STL                =  96261
      SUBVIEWER1         =  96262
      SUBVIEWER          =  96263
      SUBRIP             =  96264
      WEBVTT             =  96265
      MPL2               =  96266
      VPLAYER            =  96267
      PJS                =  96268
      ASS                =  96269
      HDMV_TEXT_SUBTITLE =  96270
      FIRST_UNKNOWN      =  98304
      TTF                =  98304
      SCTE_35            =  98305
      BINTEXT            = 100352
      XBIN               = 100353
      IDF                = 100354
      OTF                = 100355
      SMPTE_KLV          = 100356
      DVD_NAV            = 100357
      TIMED_ID3          = 100358
      BIN_DATA           = 100359
      PROBE              = 102400
      MPEG2TS            = 131072
      MPEG4SYSTEMS       = 131073
      FFMETADATA         = 135168
      WRAPPED_AVFRAME    = 135169
    end

    struct CodecDescriptor
      id : CodecID
      type : LibAVUtil::MediaType
      name : LibC::Char*
      long_name : LibC::Char*
      props : LibC::Int
      mime_types : LibC::Char**
      profiles : Profile*
    end

    enum Motion_Est_ID : LibC::UInt
      ZERO  =  1
      FULL  =  2
      LOG   =  3
      PHODS =  4
      EPZS  =  5
      X1    =  6
      HEX   =  7
      UMH   =  8
      TESA  =  9
      ITER  = 50
    end
    enum Discard : LibC::Int
      NONE     = -16
      DEFAULT  =   0
      NONREF   =   8
      BIDIR    =  16
      NONINTRA =  24
      NONKEY   =  32
      ALL      =  48
    end
    enum AudioServiceType : LibC::UInt
      MAIN              = 0
      EFFECTS           = 1
      VISUALLY_IMPAIRED = 2
      HEARING_IMPAIRED  = 3
      DIALOGUE          = 4
      COMMENTARY        = 5
      EMERGENCY         = 6
      VOICE_OVER        = 7
      KARAOKE           = 8
      NB                = 9
    end

    struct RcOverride
      start_frame : LibC::Int
      end_frame : LibC::Int
      qscale : LibC::Int
      quality_factor : LibC::Float
    end

    struct PanScan
      id : LibC::Int
      width : LibC::Int
      height : LibC::Int
      position : StaticArray(StaticArray(Int16, 2), 3)
    end

    struct AVCPBProperties
      max_bitrate : LibC::Int
      min_bitrate : LibC::Int
      avg_bitrate : LibC::Int
      buffer_size : LibC::Int
      vbv_delay : UInt64
    end

    enum PacketSideDataType : LibC::UInt
      PALETTE                    =  0
      NEW_EXTRADATA              =  1
      PARAM_CHANGE               =  2
      H263_MB_INFO               =  3
      REPLAYGAIN                 =  4
      DISPLAYMATRIX              =  5
      STEREO3D                   =  6
      AUDIO_SERVICE_TYPE         =  7
      QUALITY_STATS              =  8
      FALLBACK_TRACK             =  9
      CPB_PROPERTIES             = 10
      SKIP_SAMPLES               = 70
      JP_DUALMONO                = 71
      STRINGS_METADATA           = 72
      SUBTITLE_POSITION          = 73
      MATROSKA_BLOCKADDITIONAL   = 74
      WEBVTT_IDENTIFIER          = 75
      WEBVTT_SETTINGS            = 76
      METADATA_UPDATE            = 77
      MPEGTS_STREAM_ID           = 78
      MASTERING_DISPLAY_METADATA = 79
      SPHERICAL                  = 80
      CONTENT_LIGHT_LEVEL        = 81
      A53_CC                     = 82
      NB                         = 83
    end

    struct PacketSideData
      data : UInt8*
      size : LibC::Int
      type : PacketSideDataType
    end

    struct Packet
      buf : LibAVUtil::BufferRef*
      pts : Int64
      dts : Int64
      data : UInt8*
      size : LibC::Int
      stream_index : LibC::Int
      flags : LibC::Int
      side_data : PacketSideData*
      side_data_elems : LibC::Int
      duration : Int64
      pos : Int64
      convergence_duration : Int64
    end

    enum SideDataParamChangeFlags : LibC::UInt
      CHANNEL_COUNT  = 1
      CHANNEL_LAYOUT = 2
      SAMPLE_RATE    = 4
      DIMENSIONS     = 8
    end
    type CodecInternal = Void
    enum FieldOrder : LibC::UInt
      UNKNOWN     = 0
      PROGRESSIVE = 1
      TT          = 2
      BB          = 3
      TB          = 4
      BT          = 5
    end

    alias CodecContextExecuteProc = (CodecContext*, Void*) -> LibC::Int*
    alias CodecContextExecute2Proc = (CodecContext*, Void*, LibC::Int, LibC::Int) -> LibC::Int*

    struct CodecContext
      av_class : LibAVUtil::Class*
      log_level_offset : LibC::Int
      codec_type : LibAVUtil::MediaType
      codec : Codec*
      codec_name : StaticArray(LibC::Char, 32)
      codec_id : CodecID
      codec_tag : LibC::UInt
      stream_codec_tag : LibC::UInt
      priv_data : Void*
      internal : CodecInternal*
      opaque : Void*
      bit_rate : Int64
      bit_rate_tolerance : LibC::Int
      global_quality : LibC::Int
      compression_level : LibC::Int
      flags : LibC::Int
      flags2 : LibC::Int
      extradata : UInt8*
      extradata_size : LibC::Int
      time_base : LibAVUtil::Rational
      ticks_per_frame : LibC::Int
      delay : LibC::Int
      width : LibC::Int
      height : LibC::Int
      coded_width : LibC::Int
      coded_height : LibC::Int
      gop_size : LibC::Int
      pix_fmt : LibAVUtil::PixelFormat
      me_method : LibC::Int
      draw_horiz_band : (CodecContext*, LibAVUtil::Frame*, LibC::Int*, LibC::Int, LibC::Int, LibC::Int) -> Void*
      get_format : (CodecContext*, LibAVUtil::PixelFormat*) -> LibAVUtil::PixelFormat*
      max_b_frames : LibC::Int
      b_quant_factor : LibC::Float
      rc_strategy : LibC::Int
      b_frame_strategy : LibC::Int
      b_quant_offset : LibC::Float
      has_b_frames : LibC::Int
      mpeg_quant : LibC::Int
      i_quant_factor : LibC::Float
      i_quant_offset : LibC::Float
      lumi_masking : LibC::Float
      temporal_cplx_masking : LibC::Float
      spatial_cplx_masking : LibC::Float
      p_masking : LibC::Float
      dark_masking : LibC::Float
      slice_count : LibC::Int
      prediction_method : LibC::Int
      slice_offset : LibC::Int*
      sample_aspect_ratio : LibAVUtil::Rational
      me_cmp : LibC::Int
      me_sub_cmp : LibC::Int
      mb_cmp : LibC::Int
      ildct_cmp : LibC::Int
      dia_size : LibC::Int
      last_predictor_count : LibC::Int
      pre_me : LibC::Int
      me_pre_cmp : LibC::Int
      pre_dia_size : LibC::Int
      me_subpel_quality : LibC::Int
      dtg_active_format : LibC::Int
      me_range : LibC::Int
      intra_quant_bias : LibC::Int
      inter_quant_bias : LibC::Int
      slice_flags : LibC::Int
      xvmc_acceleration : LibC::Int
      mb_decision : LibC::Int
      intra_matrix : UInt16*
      inter_matrix : UInt16*
      scenechange_threshold : LibC::Int
      noise_reduction : LibC::Int
      me_threshold : LibC::Int
      mb_threshold : LibC::Int
      intra_dc_precision : LibC::Int
      skip_top : LibC::Int
      skip_bottom : LibC::Int
      border_masking : LibC::Float
      mb_lmin : LibC::Int
      mb_lmax : LibC::Int
      me_penalty_compensation : LibC::Int
      bidir_refine : LibC::Int
      brd_scale : LibC::Int
      keyint_min : LibC::Int
      refs : LibC::Int
      chromaoffset : LibC::Int
      scenechange_factor : LibC::Int
      mv0_threshold : LibC::Int
      b_sensitivity : LibC::Int
      color_primaries : LibAVUtil::ColorPrimaries
      color_trc : LibAVUtil::ColorTransferCharacteristic
      colorspace : LibAVUtil::ColorSpace
      color_range : LibAVUtil::ColorRange
      chroma_sample_location : LibAVUtil::ChromaLocation
      slices : LibC::Int
      field_order : FieldOrder
      sample_rate : LibC::Int
      channels : LibC::Int
      sample_fmt : LibAVUtil::SampleFormat
      frame_size : LibC::Int
      frame_number : LibC::Int
      block_align : LibC::Int
      cutoff : LibC::Int
      channel_layout : UInt64
      request_channel_layout : UInt64
      audio_service_type : AudioServiceType
      request_sample_fmt : LibAVUtil::SampleFormat
      get_buffer2 : (CodecContext*, LibAVUtil::Frame*, LibC::Int) -> LibC::Int*
      refcounted_frames : LibC::Int
      qcompress : LibC::Float
      qblur : LibC::Float
      qmin : LibC::Int
      qmax : LibC::Int
      max_qdiff : LibC::Int
      rc_qsquish : LibC::Float
      rc_qmod_amp : LibC::Float
      rc_qmod_freq : LibC::Int
      rc_buffer_size : LibC::Int
      rc_override_count : LibC::Int
      rc_override : RcOverride*
      rc_eq : LibC::Char*
      rc_max_rate : Int64
      rc_min_rate : Int64
      rc_buffer_aggressivity : LibC::Float
      rc_initial_cplx : LibC::Float
      rc_max_available_vbv_use : LibC::Float
      rc_min_vbv_overflow_use : LibC::Float
      rc_initial_buffer_occupancy : LibC::Int
      coder_type : LibC::Int
      context_model : LibC::Int
      lmin : LibC::Int
      lmax : LibC::Int
      frame_skip_threshold : LibC::Int
      frame_skip_factor : LibC::Int
      frame_skip_exp : LibC::Int
      frame_skip_cmp : LibC::Int
      trellis : LibC::Int
      min_prediction_order : LibC::Int
      max_prediction_order : LibC::Int
      timecode_frame_start : Int64
      rtp_callback : (CodecContext*, Void*, LibC::Int, LibC::Int) -> Void*
      rtp_payload_size : LibC::Int
      mv_bits : LibC::Int
      header_bits : LibC::Int
      i_tex_bits : LibC::Int
      p_tex_bits : LibC::Int
      i_count : LibC::Int
      p_count : LibC::Int
      skip_count : LibC::Int
      misc_bits : LibC::Int
      frame_bits : LibC::Int
      stats_out : LibC::Char*
      stats_in : LibC::Char*
      workaround_bugs : LibC::Int
      strict_std_compliance : LibC::Int
      error_concealment : LibC::Int
      debug : LibC::Int
      debug_mv : LibC::Int
      err_recognition : LibC::Int
      reordered_opaque : Int64
      hwaccel : AVHWAccel*
      hwaccel_context : Void*
      error : StaticArray(UInt64, 8)
      dct_algo : LibC::Int
      idct_algo : LibC::Int
      bits_per_coded_sample : LibC::Int
      bits_per_raw_sample : LibC::Int
      lowres : LibC::Int
      coded_frame : LibAVUtil::Frame*
      thread_count : LibC::Int
      thread_type : LibC::Int
      active_thread_type : LibC::Int
      thread_safe_callbacks : LibC::Int
      execute : (CodecContext*, CodecContextExecuteProc, Void*, LibC::Int*, LibC::Int, LibC::Int) -> LibC::Int*
      execute2 : (CodecContext*, CodecContextExecute2Proc, Void*, LibC::Int*, LibC::Int) -> LibC::Int*
      nsse_weight : LibC::Int
      profile : LibC::Int
      level : LibC::Int
      skip_loop_filter : Discard
      skip_idct : Discard
      skip_frame : Discard
      subtitle_header : UInt8*
      subtitle_header_size : LibC::Int
      error_rate : LibC::Int
      vbv_delay : UInt64
      side_data_only_packets : LibC::Int
      initial_padding : LibC::Int
      framerate : LibAVUtil::Rational
      sw_pix_fmt : LibAVUtil::PixelFormat
      pkt_timebase : LibAVUtil::Rational
      codec_descriptor : CodecDescriptor*
      pts_correction_num_faulty_pts : Int64
      pts_correction_num_faulty_dts : Int64
      pts_correction_last_pts : Int64
      pts_correction_last_dts : Int64
      sub_charenc : LibC::Char*
      sub_charenc_mode : LibC::Int
      skip_alpha : LibC::Int
      seek_preroll : LibC::Int
      chroma_intra_matrix : UInt16*
      dump_separator : UInt8*
      codec_whitelist : LibC::Char*
      properties : LibC::UInt
      coded_side_data : PacketSideData*
      nb_coded_side_data : LibC::Int
      hw_frames_ctx : LibAVUtil::BufferRef*
      sub_text_format : LibC::Int
      trailing_padding : LibC::Int
      max_pixels : Int64
      hw_device_ctx : LibAVUtil::BufferRef*
      hwaccel_flags : LibC::Int
      apply_cropping : LibC::Int
    end

    fun codec_get_pkt_timebase = av_codec_get_pkt_timebase(CodecContext*) : LibAVUtil::Rational
    fun codec_set_pkt_timebase = av_codec_set_pkt_timebase(CodecContext*, LibAVUtil::Rational) : Void
    fun codec_get_codec_descriptor = av_codec_get_codec_descriptor(CodecContext*) : CodecDescriptor*
    fun codec_set_codec_descriptor = av_codec_set_codec_descriptor(CodecContext*, CodecDescriptor*) : Void
    fun codec_get_codec_properties = av_codec_get_codec_properties(CodecContext*) : LibC::UInt
    fun codec_get_lowres = av_codec_get_lowres(CodecContext*) : LibC::Int
    fun codec_set_lowres = av_codec_set_lowres(CodecContext*, LibC::Int) : Void
    fun codec_get_seek_preroll = av_codec_get_seek_preroll(CodecContext*) : LibC::Int
    fun codec_set_seek_preroll = av_codec_set_seek_preroll(CodecContext*, LibC::Int) : Void
    fun codec_get_chroma_intra_matrix = av_codec_get_chroma_intra_matrix(CodecContext*) : UInt16*
    fun codec_set_chroma_intra_matrix = av_codec_set_chroma_intra_matrix(CodecContext*, UInt16*) : Void

    struct Profile
      profile : LibC::Int
      name : LibC::Char*
    end

    type CodecDefault = Void
    # type Subtitle = Void

    struct Codec
      name : LibC::Char*
      long_name : LibC::Char*
      type : LibAVUtil::MediaType
      id : CodecID
      capabilities : LibC::Int
      supported_framerates : LibAVUtil::Rational*
      pix_fmts : LibAVUtil::PixelFormat*
      supported_samplerates : LibC::Int*
      sample_fmts : LibAVUtil::SampleFormat*
      channel_layouts : UInt64*
      max_lowres : UInt8
      priv_class : LibAVUtil::Class*
      profiles : Profile*
      priv_data_size : LibC::Int
      next : Codec*
      init_thread_copy : (CodecContext*) -> LibC::Int*
      update_thread_context : (CodecContext*, CodecContext*) -> LibC::Int*
      defaults : CodecDefault*
      init_static_data : (Codec*) -> Void*
      init : (CodecContext*) -> LibC::Int*
      encode_sub : (CodecContext*, LibC::Char*, LibC::Int, Subtitle*) -> LibC::Int*
      encode2 : (CodecContext*, Packet*, LibAVUtil::Frame*, LibC::Int*) -> LibC::Int*
      decode : (CodecContext*, Void*, LibC::Int*, Packet*) -> LibC::Int*
      close : (CodecContext*) -> LibC::Int*
      send_frame : (CodecContext*, LibAVUtil::Frame*) -> LibC::Int*
      receive_packet : (CodecContext*, Packet*) -> LibC::Int*
      receive_frame : (CodecContext*, LibAVUtil::Frame*) -> LibC::Int*
      flush : (CodecContext*) -> Void*
      caps_internal : LibC::Int
      bsfs : LibC::Char*
    end

    fun codec_get_max_lowres = av_codec_get_max_lowres(Codec*) : LibC::Int
    type MpegEncContext = Void

    struct AVHWAccel
      name : LibC::Char*
      type : LibAVUtil::MediaType
      id : CodecID
      pix_fmt : LibAVUtil::PixelFormat
      capabilities : LibC::Int
      next : AVHWAccel*
      alloc_frame : (CodecContext*, LibAVUtil::Frame*) -> LibC::Int*
      start_frame : (CodecContext*, LibC::Char*, LibC::UInt) -> LibC::Int*
      decode_slice : (CodecContext*, LibC::Char*, LibC::UInt) -> LibC::Int*
      end_frame : (CodecContext*) -> LibC::Int*
      frame_priv_data_size : LibC::Int
      decode_mb : (MpegEncContext*) -> Void*
      init : (CodecContext*) -> LibC::Int*
      uninit : (CodecContext*) -> LibC::Int*
      priv_data_size : LibC::Int
      caps_internal : LibC::Int
    end

    struct Picture
      data : StaticArray(UInt8*, 8)
      linesize : StaticArray(LibC::Int, 8)
    end

    enum SubtitleType : LibC::UInt
      NONE   = 0
      BITMAP = 1
      TEXT   = 2
      ASS    = 3
    end

    struct SubtitleRect
      x : LibC::Int
      y : LibC::Int
      w : LibC::Int
      h : LibC::Int
      nb_colors : LibC::Int
      pict : Picture
      data : StaticArray(UInt8*, 4)
      linesize : StaticArray(LibC::Int, 4)
      type : SubtitleType
      text : LibC::Char*
      ass : LibC::Char*
      flags : LibC::Int
    end

    struct Subtitle
      format : UInt16
      start_display_time : UInt32
      end_display_time : UInt32
      num_rects : LibC::UInt
      rects : SubtitleRect**
      pts : Int64
    end

    struct CodecParameters
      codec_type : LibAVUtil::MediaType
      codec_id : CodecID
      codec_tag : UInt32
      extradata : UInt8*
      extradata_size : LibC::Int
      format : LibC::Int
      bit_rate : Int64
      bits_per_coded_sample : LibC::Int
      bits_per_raw_sample : LibC::Int
      profile : LibC::Int
      level : LibC::Int
      width : LibC::Int
      height : LibC::Int
      sample_aspect_ratio : LibAVUtil::Rational
      field_order : FieldOrder
      color_range : LibAVUtil::ColorRange
      color_primaries : LibAVUtil::ColorPrimaries
      color_trc : LibAVUtil::ColorTransferCharacteristic
      color_space : LibAVUtil::ColorSpace
      chroma_location : LibAVUtil::ChromaLocation
      video_delay : LibC::Int
      channel_layout : UInt64
      channels : LibC::Int
      sample_rate : LibC::Int
      block_align : LibC::Int
      frame_size : LibC::Int
      initial_padding : LibC::Int
      trailing_padding : LibC::Int
      seek_preroll : LibC::Int
    end

    fun codec_next = av_codec_next(Codec*) : Codec*
    fun version = av_codec_version : LibC::UInt
    fun configuration = av_codec_configuration : LibC::Char*
    fun license = av_codec_license : LibC::Char*
    fun register = av_codec_register(Codec*) : Void
    fun register_all = av_codec_register_all : Void
    fun alloc_context3 = av_codec_alloc_context3(Codec*) : CodecContext*
    fun free_context = av_codec_free_context(CodecContext**) : Void
    fun get_context_defaults3 = av_codec_get_context_defaults3(CodecContext*, Codec*) : LibC::Int
    fun get_class = av_codec_get_class : LibAVUtil::Class*
    fun get_frame_class = av_codec_get_frame_class : LibAVUtil::Class*
    fun get_subtitle_rect_class = av_codec_get_subtitle_rect_class : LibAVUtil::Class*
    fun copy_context = av_codec_copy_context(CodecContext*, CodecContext*) : LibC::Int
    fun parameters_alloc = av_codec_parameters_alloc : CodecParameters*
    fun parameters_free = av_codec_parameters_free(CodecParameters**) : Void
    fun parameters_copy = av_codec_parameters_copy(CodecParameters*, CodecParameters*) : LibC::Int
    fun parameters_from_context = av_codec_parameters_from_context(CodecParameters*, CodecContext*) : LibC::Int
    fun parameters_to_context = av_codec_parameters_to_context(CodecContext*, CodecParameters*) : LibC::Int
    fun open2 = av_codec_open2(CodecContext*, Codec*, LibAVUtil::Dictionary**) : LibC::Int
    fun close = av_codec_close(CodecContext*) : LibC::Int
    fun avsubtitle_free(Subtitle*) : Void
    fun packet_alloc = av_packet_alloc : Packet*
    fun packet_clone = av_packet_clone(Packet*) : Packet*
    fun packet_free = av_packet_free(Packet**) : Void
    fun init_packet = av_init_packet(Packet*) : Void
    fun new_packet = av_new_packet(Packet*, LibC::Int) : LibC::Int
    fun shrink_packet = av_shrink_packet(Packet*, LibC::Int) : Void
    fun grow_packet = av_grow_packet(Packet*, LibC::Int) : LibC::Int
    fun packet_from_data = av_packet_from_data(Packet*, UInt8*, LibC::Int) : LibC::Int
    fun dup_packet = av_dup_packet(Packet*) : LibC::Int
    fun copy_packet = av_copy_packet(Packet*, Packet*) : LibC::Int
    fun copy_packet_side_data = av_copy_packet_side_data(Packet*, Packet*) : LibC::Int
    fun free_packet = av_free_packet(Packet*) : Void
    fun packet_new_side_data = av_packet_new_side_data(Packet*, PacketSideDataType, LibC::Int) : UInt8*
    fun packet_add_side_data = av_packet_add_side_data(Packet*, PacketSideDataType, UInt8*, LibC::SizeT) : LibC::Int
    fun packet_shrink_side_data = av_packet_shrink_side_data(Packet*, PacketSideDataType, LibC::Int) : LibC::Int
    fun packet_get_side_data = av_packet_get_side_data(Packet*, PacketSideDataType, LibC::Int*) : UInt8*
    fun packet_merge_side_data = av_packet_merge_side_data(Packet*) : LibC::Int
    fun packet_split_side_data = av_packet_split_side_data(Packet*) : LibC::Int
    fun packet_side_data_name = av_packet_side_data_name(PacketSideDataType) : LibC::Char*
    fun packet_pack_dictionary = av_packet_pack_dictionary(LibAVUtil::Dictionary*, LibC::Int*) : UInt8*
    fun packet_unpack_dictionary = av_packet_unpack_dictionary(UInt8*, LibC::Int, LibAVUtil::Dictionary**) : LibC::Int
    fun packet_free_side_data = av_packet_free_side_data(Packet*) : Void
    fun packet_ref = av_packet_ref(Packet*, Packet*) : LibC::Int
    fun packet_unref = av_packet_unref(Packet*) : Void
    fun packet_move_ref = av_packet_move_ref(Packet*, Packet*) : Void
    fun packet_copy_props = av_packet_copy_props(Packet*, Packet*) : LibC::Int
    fun packet_rescale_ts = av_packet_rescale_ts(Packet*, LibAVUtil::Rational, LibAVUtil::Rational) : Void
    fun find_decoder = av_codec_find_decoder(CodecID) : Codec*
    fun find_decoder_by_name = av_codec_find_decoder_by_name(LibC::Char*) : Codec*
    fun default_get_buffer2 = av_codec_default_get_buffer2(CodecContext*, LibAVUtil::Frame*, LibC::Int) : LibC::Int
    fun get_edge_width = av_codec_get_edge_width : LibC::UInt
    fun align_dimensions = av_codec_align_dimensions(CodecContext*, LibC::Int*, LibC::Int*) : Void
    fun align_dimensions2 = av_codec_align_dimensions2(CodecContext*, LibC::Int*, LibC::Int*, StaticArray(LibC::Int, 8)) : Void
    fun enum_to_chroma_pos = av_codec_enum_to_chroma_pos(LibC::Int*, LibC::Int*, LibAVUtil::ChromaLocation) : LibC::Int
    fun chroma_pos_to_enum = av_codec_chroma_pos_to_enum(LibC::Int, LibC::Int) : LibAVUtil::ChromaLocation
    fun decode_audio4 = av_codec_decode_audio4(CodecContext*, LibAVUtil::Frame*, LibC::Int*, Packet*) : LibC::Int
    fun decode_video2 = av_codec_decode_video2(CodecContext*, LibAVUtil::Frame*, LibC::Int*, Packet*) : LibC::Int
    fun decode_subtitle2 = av_codec_decode_subtitle2(CodecContext*, Subtitle*, LibC::Int*, Packet*) : LibC::Int
    fun send_packet = av_codec_send_packet(CodecContext*, Packet*) : LibC::Int
    fun receive_frame = av_codec_receive_frame(CodecContext*, LibAVUtil::Frame*) : LibC::Int
    fun send_frame = av_codec_send_frame(CodecContext*, LibAVUtil::Frame*) : LibC::Int
    fun receive_packet = av_codec_receive_packet(CodecContext*, Packet*) : LibC::Int
    enum PictureStructure : LibC::UInt
      UNKNOWN      = 0
      TOP_FIELD    = 1
      BOTTOM_FIELD = 2
      FRAME        = 3
    end

    struct CodecParserContext
      priv_data : Void*
      parser : CodecParser*
      frame_offset : Int64
      cur_offset : Int64
      next_frame_offset : Int64
      pict_type : LibC::Int
      repeat_pict : LibC::Int
      pts : Int64
      dts : Int64
      last_pts : Int64
      last_dts : Int64
      fetch_timestamp : LibC::Int
      cur_frame_start_index : LibC::Int
      cur_frame_offset : StaticArray(Int64, 4)
      cur_frame_pts : StaticArray(Int64, 4)
      cur_frame_dts : StaticArray(Int64, 4)
      flags : LibC::Int
      offset : Int64
      cur_frame_end : StaticArray(Int64, 4)
      key_frame : LibC::Int
      convergence_duration : Int64
      dts_sync_point : LibC::Int
      dts_ref_dts_delta : LibC::Int
      pts_dts_delta : LibC::Int
      cur_frame_pos : StaticArray(Int64, 4)
      pos : Int64
      last_pos : Int64
      duration : LibC::Int
      field_order : FieldOrder
      picture_structure : PictureStructure
      output_picture_number : LibC::Int
      width : LibC::Int
      height : LibC::Int
      coded_width : LibC::Int
      coded_height : LibC::Int
      format : LibC::Int
    end

    struct CodecParser
      codec_ids : StaticArray(LibC::Int, 5)
      priv_data_size : LibC::Int
      parser_init : (CodecParserContext*) -> LibC::Int*
      parser_parse : (CodecParserContext*, CodecContext*, LibC::Char**, LibC::Int*, LibC::Char*, LibC::Int) -> LibC::Int*
      parser_close : (CodecParserContext*) -> Void*
      split : (CodecContext*, LibC::Char*, LibC::Int) -> LibC::Int*
      next : CodecParser*
    end

    fun parser_next = av_parser_next(CodecParser*) : CodecParser*
    fun register_codec_parser = av_register_codec_parser(CodecParser*) : Void
    fun parser_init = av_parser_init(LibC::Int) : CodecParserContext*
    fun parser_parse2 = av_parser_parse2(CodecParserContext*, CodecContext*, UInt8**, LibC::Int*, UInt8*, LibC::Int, Int64, Int64, Int64) : LibC::Int
    fun parser_change = av_parser_change(CodecParserContext*, CodecContext*, UInt8**, LibC::Int*, UInt8*, LibC::Int, LibC::Int) : LibC::Int
    fun parser_close = av_parser_close(CodecParserContext*) : Void
    fun find_encoder = av_codec_find_encoder(CodecID) : Codec*
    fun find_encoder_by_name = av_codec_find_encoder_by_name(LibC::Char*) : Codec*
    fun encode_audio2 = av_codec_encode_audio2(CodecContext*, Packet*, LibAVUtil::Frame*, LibC::Int*) : LibC::Int
    fun encode_video2 = av_codec_encode_video2(CodecContext*, Packet*, LibAVUtil::Frame*, LibC::Int*) : LibC::Int
    fun encode_subtitle = av_codec_encode_subtitle(CodecContext*, UInt8*, LibC::Int, Subtitle*) : LibC::Int
    type ReSampleContext = Void
    type ResampleContext = Void
    fun audio_resample_init = av_audio_resample_init(LibC::Int, LibC::Int, LibC::Int, LibC::Int, LibAVUtil::SampleFormat, LibAVUtil::SampleFormat, LibC::Int, LibC::Int, LibC::Int, LibC::Double) : ReSampleContext*
    fun audio_resample(ReSampleContext*, LibC::Short*, LibC::Short*, LibC::Int) : LibC::Int
    fun audio_resample_close(ReSampleContext*) : Void
    fun resample_init = av_resample_init(LibC::Int, LibC::Int, LibC::Int, LibC::Int, LibC::Int, LibC::Double) : ResampleContext*
    fun resample = av_resample(ResampleContext*, LibC::Short*, LibC::Short*, LibC::Int*, LibC::Int, LibC::Int, LibC::Int) : LibC::Int
    fun resample_compensate = av_resample_compensate(ResampleContext*, LibC::Int, LibC::Int) : Void
    fun resample_close = av_resample_close(ResampleContext*) : Void
    fun avpicture_alloc(Picture*, LibAVUtil::PixelFormat, LibC::Int, LibC::Int) : LibC::Int
    fun avpicture_free(Picture*) : Void
    fun avpicture_fill(Picture*, UInt8*, LibAVUtil::PixelFormat, LibC::Int, LibC::Int) : LibC::Int
    fun avpicture_layout(Picture*, LibAVUtil::PixelFormat, LibC::Int, LibC::Int, LibC::Char*, LibC::Int) : LibC::Int
    fun avpicture_get_size(LibAVUtil::PixelFormat, LibC::Int, LibC::Int) : LibC::Int
    fun picture_copy = av_picture_copy(Picture*, Picture*, LibAVUtil::PixelFormat, LibC::Int, LibC::Int) : Void
    fun picture_crop = av_picture_crop(Picture*, Picture*, LibAVUtil::PixelFormat, LibC::Int, LibC::Int) : LibC::Int
    fun picture_pad = av_picture_pad(Picture*, Picture*, LibC::Int, LibC::Int, LibAVUtil::PixelFormat, LibC::Int, LibC::Int, LibC::Int, LibC::Int, LibC::Int*) : LibC::Int
    fun get_chroma_sub_sample = av_codec_get_chroma_sub_sample(LibAVUtil::PixelFormat, LibC::Int*, LibC::Int*) : Void
    fun pix_fmt_to_codec_tag = av_codec_pix_fmt_to_codec_tag(LibAVUtil::PixelFormat) : LibC::UInt
    fun get_pix_fmt_loss = av_codec_get_pix_fmt_loss(LibAVUtil::PixelFormat, LibAVUtil::PixelFormat, LibC::Int) : LibC::Int
    fun find_best_pix_fmt_of_list = av_codec_find_best_pix_fmt_of_list(LibAVUtil::PixelFormat*, LibAVUtil::PixelFormat, LibC::Int, LibC::Int*) : LibAVUtil::PixelFormat
    fun find_best_pix_fmt_of_2 = av_codec_find_best_pix_fmt_of_2(LibAVUtil::PixelFormat, LibAVUtil::PixelFormat, LibAVUtil::PixelFormat, LibC::Int, LibC::Int*) : LibAVUtil::PixelFormat
    fun find_best_pix_fmt2 = av_codec_find_best_pix_fmt2(LibAVUtil::PixelFormat, LibAVUtil::PixelFormat, LibAVUtil::PixelFormat, LibC::Int, LibC::Int*) : LibAVUtil::PixelFormat
    fun default_get_format = av_codec_default_get_format(CodecContext*, LibAVUtil::PixelFormat*) : LibAVUtil::PixelFormat
    fun set_dimensions = av_codec_set_dimensions(CodecContext*, LibC::Int, LibC::Int) : Void
    fun get_codec_tag_string = av_get_codec_tag_string(LibC::Char*, LibC::SizeT, LibC::UInt) : LibC::SizeT
    fun string = av_codec_string(LibC::Char*, LibC::Int, CodecContext*, LibC::Int) : Void
    fun get_profile_name = av_get_profile_name(Codec*, LibC::Int) : LibC::Char*
    fun profile_name = av_codec_profile_name(CodecID, LibC::Int) : LibC::Char*
    fun default_execute = av_codec_default_execute(CodecContext*, CodecContextExecuteProc, Void*, LibC::Int*, LibC::Int, LibC::Int) : LibC::Int
    fun default_execute2 = av_codec_default_execute2(CodecContext*, CodecContextExecute2Proc, Void*, LibC::Int*, LibC::Int) : LibC::Int
    fun fill_audio_frame = av_codec_fill_audio_frame(LibAVUtil::Frame*, LibC::Int, LibAVUtil::SampleFormat, UInt8*, LibC::Int, LibC::Int) : LibC::Int
    fun flush_buffers = av_codec_flush_buffers(CodecContext*) : Void
    fun get_bits_per_sample = av_get_bits_per_sample(CodecID) : LibC::Int
    fun get_pcm_codec = av_get_pcm_codec(LibAVUtil::SampleFormat, LibC::Int) : CodecID
    fun get_exact_bits_per_sample = av_get_exact_bits_per_sample(CodecID) : LibC::Int
    fun get_audio_frame_duration = av_get_audio_frame_duration(CodecContext*, LibC::Int) : LibC::Int
    fun get_audio_frame_duration2 = av_get_audio_frame_duration2(CodecParameters*, LibC::Int) : LibC::Int

    struct BitStreamFilterContext
      priv_data : Void*
      filter : BitStreamFilter*
      parser : CodecParserContext*
      next : BitStreamFilterContext*
      args : LibC::Char*
    end

    type AVBSFInternal = Void

    struct AVBSFContext
      av_class : LibAVUtil::Class*
      filter : BitStreamFilter*
      internal : AVBSFInternal*
      priv_data : Void*
      par_in : CodecParameters*
      par_out : CodecParameters*
      time_base_in : LibAVUtil::Rational
      time_base_out : LibAVUtil::Rational
    end

    struct BitStreamFilter
      name : LibC::Char*
      codec_ids : CodecID*
      priv_class : LibAVUtil::Class*
      priv_data_size : LibC::Int
      init : (AVBSFContext*) -> LibC::Int*
      filter : (AVBSFContext*, Packet*) -> LibC::Int*
      close : (AVBSFContext*) -> Void*
    end

    fun register_bitstream_filter = av_register_bitstream_filter(BitStreamFilter*) : Void
    fun bitstream_filter_init = av_bitstream_filter_init(LibC::Char*) : BitStreamFilterContext*
    fun bitstream_filter_filter = av_bitstream_filter_filter(BitStreamFilterContext*, CodecContext*, LibC::Char*, UInt8**, LibC::Int*, UInt8*, LibC::Int, LibC::Int) : LibC::Int
    fun bitstream_filter_close = av_bitstream_filter_close(BitStreamFilterContext*) : Void
    fun bitstream_filter_next = av_bitstream_filter_next(BitStreamFilter*) : BitStreamFilter*
    fun bsf_get_by_name = av_bsf_get_by_name(LibC::Char*) : BitStreamFilter*
    fun bsf_next = av_bsf_next(Void**) : BitStreamFilter*
    fun bsf_alloc = av_bsf_alloc(BitStreamFilter*, AVBSFContext**) : LibC::Int
    fun bsf_init = av_bsf_init(AVBSFContext*) : LibC::Int
    fun bsf_send_packet = av_bsf_send_packet(AVBSFContext*, Packet*) : LibC::Int
    fun bsf_receive_packet = av_bsf_receive_packet(AVBSFContext*, Packet*) : LibC::Int
    fun bsf_free = av_bsf_free(AVBSFContext**) : Void
    fun bsf_get_class = av_bsf_get_class : LibAVUtil::Class*
    type AVBSFList = Void
    fun bsf_list_alloc = av_bsf_list_alloc : AVBSFList*
    fun bsf_list_free = av_bsf_list_free(AVBSFList**) : Void
    fun bsf_list_append = av_bsf_list_append(AVBSFList*, AVBSFContext*) : LibC::Int
    fun bsf_list_append2 = av_bsf_list_append2(AVBSFList*, LibC::Char*, LibAVUtil::Dictionary**) : LibC::Int
    fun bsf_list_finalize = av_bsf_list_finalize(AVBSFList**, AVBSFContext**) : LibC::Int
    fun bsf_list_parse_str = av_bsf_list_parse_str(LibC::Char*, AVBSFContext**) : LibC::Int
    fun bsf_get_null_filter = av_bsf_get_null_filter(AVBSFContext**) : LibC::Int
    fun fast_padded_malloc = av_fast_padded_malloc(Void*, LibC::UInt*, LibC::SizeT) : Void
    fun fast_padded_mallocz = av_fast_padded_mallocz(Void*, LibC::UInt*, LibC::SizeT) : Void
    fun xiphlacing = av_xiphlacing(LibC::Char*, LibC::UInt) : LibC::UInt
    fun log_missing_feature = av_log_missing_feature(Void*, LibC::Char*, LibC::Int) : Void
    fun log_ask_for_sample = av_log_ask_for_sample(Void*, LibC::Char*) : Void
    fun register_hwaccel = av_register_hwaccel(AVHWAccel*) : Void
    fun hwaccel_next = av_hwaccel_next(AVHWAccel*) : AVHWAccel*
    enum LockOp : LibC::UInt
      CREATE  = 0
      OBTAIN  = 1
      RELEASE = 2
      DESTROY = 3
    end
    fun lockmgr_register = av_lockmgr_register((Void**, LockOp) -> LibC::Int*) : LibC::Int
    fun get_type = av_codec_get_type(CodecID) : LibAVUtil::MediaType
    fun get_name = av_codec_get_name(CodecID) : LibC::Char*
    fun is_open = av_codec_is_open(CodecContext*) : LibC::Int
    fun codec_is_encoder = av_codec_is_encoder(Codec*) : LibC::Int
    fun codec_is_decoder = av_codec_is_decoder(Codec*) : LibC::Int
    fun descriptor_get = av_codec_descriptor_get(CodecID) : CodecDescriptor*
    fun descriptor_next = av_codec_descriptor_next(CodecDescriptor*) : CodecDescriptor*
    fun descriptor_get_by_name = av_codec_descriptor_get_by_name(LibC::Char*) : CodecDescriptor*
    fun cpb_properties_alloc = av_cpb_properties_alloc(LibC::SizeT*) : AVCPBProperties*
  end
end
