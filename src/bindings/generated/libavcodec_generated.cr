module AV
lib LibAVCodec
#   AVCODEC_AVCODEC_H = 
    AV_CODEC_ID_IFF_BYTERUN1 = AV_CODEC_ID_IFF_ILBM
    AV_CODEC_ID_H265 = AV_CODEC_ID_HEVC
    AV_CODEC_PROP_INTRA_ONLY = 1<<0
    AV_CODEC_PROP_LOSSY = 1<<1
    AV_CODEC_PROP_LOSSLESS = 1<<2
    AV_CODEC_PROP_REORDER = 1<<3
    AV_CODEC_PROP_BITMAP_SUB = 1<<16
    AV_CODEC_PROP_TEXT_SUB = 1<<17
    AV_INPUT_BUFFER_PADDING_SIZE = 32
    AV_INPUT_BUFFER_MIN_SIZE = 16384
    FF_INPUT_BUFFER_PADDING_SIZE = 32
    FF_MIN_BUFFER_SIZE = 16384
    FF_MAX_B_FRAMES = 16
    AV_CODEC_FLAG_UNALIGNED = 1<<0
    AV_CODEC_FLAG_QSCALE = 1<<1
    AV_CODEC_FLAG_4MV = 1<<2
    AV_CODEC_FLAG_OUTPUT_CORRUPT = 1<<3
    AV_CODEC_FLAG_QPEL = 1<<4
    AV_CODEC_FLAG_PASS1 = 1<<9
    AV_CODEC_FLAG_PASS2 = 1<<10
    AV_CODEC_FLAG_LOOP_FILTER = 1<<11
    AV_CODEC_FLAG_GRAY = 1<<13
    AV_CODEC_FLAG_PSNR = 1<<15
    AV_CODEC_FLAG_TRUNCATED = 1<<16
    AV_CODEC_FLAG_INTERLACED_DCT = 1<<18
    AV_CODEC_FLAG_LOW_DELAY = 1<<19
    AV_CODEC_FLAG_GLOBAL_HEADER = 1<<22
    AV_CODEC_FLAG_BITEXACT = 1<<23
    AV_CODEC_FLAG_AC_PRED = 1<<24
    AV_CODEC_FLAG_INTERLACED_ME = 1<<29
    AV_CODEC_FLAG_CLOSED_GOP = UInt.new(1)<<31
    AV_CODEC_FLAG2_FAST = 1<<0
    AV_CODEC_FLAG2_NO_OUTPUT = 1<<2
    AV_CODEC_FLAG2_LOCAL_HEADER = 1<<3
    AV_CODEC_FLAG2_DROP_FRAME_TIMECODE = 1<<13
    AV_CODEC_FLAG2_CHUNKS = 1<<15
    AV_CODEC_FLAG2_IGNORE_CROP = 1<<16
    AV_CODEC_FLAG2_SHOW_ALL = 1<<22
    AV_CODEC_FLAG2_EXPORT_MVS = 1<<28
    AV_CODEC_FLAG2_SKIP_MANUAL = 1<<29
    AV_CODEC_FLAG2_RO_FLUSH_NOOP = 1<<30
    AV_CODEC_CAP_DRAW_HORIZ_BAND = 1<<0
    AV_CODEC_CAP_DR1 = 1<<1
    AV_CODEC_CAP_TRUNCATED = 1<<3
    AV_CODEC_CAP_DELAY = 1<<5
    AV_CODEC_CAP_SMALL_LAST_FRAME = 1<<6
    AV_CODEC_CAP_HWACCEL_VDPAU = 1<<7
    AV_CODEC_CAP_SUBFRAMES = 1<<8
    AV_CODEC_CAP_EXPERIMENTAL = 1<<9
    AV_CODEC_CAP_CHANNEL_CONF = 1<<10
    AV_CODEC_CAP_FRAME_THREADS = 1<<12
    AV_CODEC_CAP_SLICE_THREADS = 1<<13
    AV_CODEC_CAP_PARAM_CHANGE = 1<<14
    AV_CODEC_CAP_AUTO_THREADS = 1<<15
    AV_CODEC_CAP_VARIABLE_FRAME_SIZE = 1<<16
    AV_CODEC_CAP_AVOID_PROBING = 1<<17
    AV_CODEC_CAP_INTRA_ONLY = 0x40000000
    AV_CODEC_CAP_LOSSLESS = 0x80000000
    CODEC_FLAG_UNALIGNED = AV_CODEC_FLAG_UNALIGNED
    CODEC_FLAG_QSCALE = AV_CODEC_FLAG_QSCALE
    CODEC_FLAG_4MV = AV_CODEC_FLAG_4MV
    CODEC_FLAG_OUTPUT_CORRUPT = AV_CODEC_FLAG_OUTPUT_CORRUPT
    CODEC_FLAG_QPEL = AV_CODEC_FLAG_QPEL
    CODEC_FLAG_GMC = 0x0020
    CODEC_FLAG_MV0 = 0x0040
    CODEC_FLAG_INPUT_PRESERVED = 0x0100
    CODEC_FLAG_PASS1 = AV_CODEC_FLAG_PASS1
    CODEC_FLAG_PASS2 = AV_CODEC_FLAG_PASS2
    CODEC_FLAG_GRAY = AV_CODEC_FLAG_GRAY
    CODEC_FLAG_EMU_EDGE = 0x4000
    CODEC_FLAG_PSNR = AV_CODEC_FLAG_PSNR
    CODEC_FLAG_TRUNCATED = AV_CODEC_FLAG_TRUNCATED
    CODEC_FLAG_NORMALIZE_AQP = 0x00020000
    CODEC_FLAG_INTERLACED_DCT = AV_CODEC_FLAG_INTERLACED_DCT
    CODEC_FLAG_LOW_DELAY = AV_CODEC_FLAG_LOW_DELAY
    CODEC_FLAG_GLOBAL_HEADER = AV_CODEC_FLAG_GLOBAL_HEADER
    CODEC_FLAG_BITEXACT = AV_CODEC_FLAG_BITEXACT
    CODEC_FLAG_AC_PRED = AV_CODEC_FLAG_AC_PRED
    CODEC_FLAG_LOOP_FILTER = AV_CODEC_FLAG_LOOP_FILTER
    CODEC_FLAG_INTERLACED_ME = AV_CODEC_FLAG_INTERLACED_ME
    CODEC_FLAG_CLOSED_GOP = AV_CODEC_FLAG_CLOSED_GOP
    CODEC_FLAG2_FAST = AV_CODEC_FLAG2_FAST
    CODEC_FLAG2_NO_OUTPUT = AV_CODEC_FLAG2_NO_OUTPUT
    CODEC_FLAG2_LOCAL_HEADER = AV_CODEC_FLAG2_LOCAL_HEADER
    CODEC_FLAG2_DROP_FRAME_TIMECODE = AV_CODEC_FLAG2_DROP_FRAME_TIMECODE
    CODEC_FLAG2_IGNORE_CROP = AV_CODEC_FLAG2_IGNORE_CROP
    CODEC_FLAG2_CHUNKS = AV_CODEC_FLAG2_CHUNKS
    CODEC_FLAG2_SHOW_ALL = AV_CODEC_FLAG2_SHOW_ALL
    CODEC_FLAG2_EXPORT_MVS = AV_CODEC_FLAG2_EXPORT_MVS
    CODEC_FLAG2_SKIP_MANUAL = AV_CODEC_FLAG2_SKIP_MANUAL
    CODEC_CAP_DRAW_HORIZ_BAND = AV_CODEC_CAP_DRAW_HORIZ_BAND
    CODEC_CAP_DR1 = AV_CODEC_CAP_DR1
    CODEC_CAP_TRUNCATED = AV_CODEC_CAP_TRUNCATED
    CODEC_CAP_HWACCEL = 0x0010
    CODEC_CAP_DELAY = AV_CODEC_CAP_DELAY
    CODEC_CAP_SMALL_LAST_FRAME = AV_CODEC_CAP_SMALL_LAST_FRAME
    CODEC_CAP_HWACCEL_VDPAU = AV_CODEC_CAP_HWACCEL_VDPAU
    CODEC_CAP_SUBFRAMES = AV_CODEC_CAP_SUBFRAMES
    CODEC_CAP_EXPERIMENTAL = AV_CODEC_CAP_EXPERIMENTAL
    CODEC_CAP_CHANNEL_CONF = AV_CODEC_CAP_CHANNEL_CONF
    CODEC_CAP_NEG_LINESIZES = 0x0800
    CODEC_CAP_FRAME_THREADS = AV_CODEC_CAP_FRAME_THREADS
    CODEC_CAP_SLICE_THREADS = AV_CODEC_CAP_SLICE_THREADS
    CODEC_CAP_PARAM_CHANGE = AV_CODEC_CAP_PARAM_CHANGE
    CODEC_CAP_AUTO_THREADS = AV_CODEC_CAP_AUTO_THREADS
    CODEC_CAP_VARIABLE_FRAME_SIZE = AV_CODEC_CAP_VARIABLE_FRAME_SIZE
    CODEC_CAP_INTRA_ONLY = AV_CODEC_CAP_INTRA_ONLY
    CODEC_CAP_LOSSLESS = AV_CODEC_CAP_LOSSLESS
    HWACCEL_CODEC_CAP_EXPERIMENTAL = 0x0200
    MB_TYPE_INTRA4x4 = 0x0001
    MB_TYPE_INTRA16x16 = 0x0002
    MB_TYPE_INTRA_PCM = 0x0004
    MB_TYPE_16x16 = 0x0008
    MB_TYPE_16x8 = 0x0010
    MB_TYPE_8x16 = 0x0020
    MB_TYPE_8x8 = 0x0040
    MB_TYPE_INTERLACED = 0x0080
    MB_TYPE_DIRECT2 = 0x0100
    MB_TYPE_ACPRED = 0x0200
    MB_TYPE_GMC = 0x0400
    MB_TYPE_SKIP = 0x0800
    MB_TYPE_P0L0 = 0x1000
    MB_TYPE_P1L0 = 0x2000
    MB_TYPE_P0L1 = 0x4000
    MB_TYPE_P1L1 = 0x8000
    MB_TYPE_L0 =  MB_TYPE_P0L0| MB_TYPE_P1L0
    MB_TYPE_L1 =  MB_TYPE_P0L1| MB_TYPE_P1L1
    MB_TYPE_L0L1 =  MB_TYPE_L0| MB_TYPE_L1
    MB_TYPE_QUANT = 0x00010000
    MB_TYPE_CBP = 0x00020000
    FF_QSCALE_TYPE_MPEG1 = 0o0
    FF_QSCALE_TYPE_MPEG2 = 1
    FF_QSCALE_TYPE_H264 = 2
    FF_QSCALE_TYPE_VP56 = 3
    AV_GET_BUFFER_FLAG_REF = 1<<0
    AV_PKT_DATA_QUALITY_FACTOR = AV_PKT_DATA_QUALITY_STATS
    AV_PKT_FLAG_KEY = 0x0001
    AV_PKT_FLAG_CORRUPT = 0x0002
    AV_PKT_FLAG_DISCARD = 0x0004
    AV_PKT_FLAG_TRUSTED = 0x0008
    FF_COMPRESSION_DEFAULT = -1
    FF_ASPECT_EXTENDED = 15
    FF_RC_STRATEGY_XVID = 1
    FF_PRED_LEFT = 0o0
    FF_PRED_PLANE = 1
    FF_PRED_MEDIAN = 2
    FF_CMP_SAD = 0o0
    FF_CMP_SSE = 1
    FF_CMP_SATD = 2
    FF_CMP_DCT = 3
    FF_CMP_PSNR = 4
    FF_CMP_BIT = 5
    FF_CMP_RD = 6
    FF_CMP_ZERO = 7
    FF_CMP_VSAD = 8
    FF_CMP_VSSE = 9
    FF_CMP_NSSE = 10
    FF_CMP_W53 = 11
    FF_CMP_W97 = 12
    FF_CMP_DCTMAX = 13
    FF_CMP_DCT264 = 14
    FF_CMP_MEDIAN_SAD = 15
    FF_CMP_CHROMA = 256
    FF_DTG_AFD_SAME = 8
    FF_DTG_AFD_4_3 = 9
    FF_DTG_AFD_16_9 = 10
    FF_DTG_AFD_14_9 = 11
    FF_DTG_AFD_4_3_SP_14_9 = 13
    FF_DTG_AFD_16_9_SP_14_9 = 14
    FF_DTG_AFD_SP_4_3 = 15
    FF_DEFAULT_QUANT_BIAS = 999999
    SLICE_FLAG_CODED_ORDER = 0x0001
    SLICE_FLAG_ALLOW_FIELD = 0x0002
    SLICE_FLAG_ALLOW_PLANE = 0x0004
    FF_MB_DECISION_SIMPLE = 0o0
    FF_MB_DECISION_BITS = 1
    FF_MB_DECISION_RD = 2
    FF_CODER_TYPE_VLC = 0o0
    FF_CODER_TYPE_AC = 1
    FF_CODER_TYPE_RAW = 2
    FF_CODER_TYPE_RLE = 3
    FF_CODER_TYPE_DEFLATE = 4
    FF_BUG_AUTODETECT = 1
    FF_BUG_OLD_MSMPEG4 = 2
    FF_BUG_XVID_ILACE = 4
    FF_BUG_UMP4 = 8
    FF_BUG_NO_PADDING = 16
    FF_BUG_AMV = 32
    FF_BUG_AC_VLC = 0o0
    FF_BUG_QPEL_CHROMA = 64
    FF_BUG_STD_QPEL = 128
    FF_BUG_QPEL_CHROMA2 = 256
    FF_BUG_DIRECT_BLOCKSIZE = 512
    FF_BUG_EDGE = 1024
    FF_BUG_HPEL_CHROMA = 2048
    FF_BUG_DC_CLIP = 4096
    FF_BUG_MS = 8192
    FF_BUG_TRUNCATED = 16384
    FF_BUG_IEDGE = 32768
    FF_COMPLIANCE_VERY_STRICT = 2
    FF_COMPLIANCE_STRICT = 1
    FF_COMPLIANCE_NORMAL = 0o0
    FF_COMPLIANCE_UNOFFICIAL = -1
    FF_COMPLIANCE_EXPERIMENTAL = -2
    FF_EC_GUESS_MVS = 1
    FF_EC_DEBLOCK = 2
    FF_EC_FAVOR_INTER = 256
    FF_DEBUG_PICT_INFO = 1
    FF_DEBUG_RC = 2
    FF_DEBUG_BITSTREAM = 4
    FF_DEBUG_MB_TYPE = 8
    FF_DEBUG_QP = 16
    FF_DEBUG_MV = 32
    FF_DEBUG_DCT_COEFF = 0x00000040
    FF_DEBUG_SKIP = 0x00000080
    FF_DEBUG_STARTCODE = 0x00000100
    FF_DEBUG_PTS = 0x00000200
    FF_DEBUG_ER = 0x00000400
    FF_DEBUG_MMCO = 0x00000800
    FF_DEBUG_BUGS = 0x00001000
    FF_DEBUG_VIS_QP = 0x00002000
    FF_DEBUG_VIS_MB_TYPE = 0x00004000
    FF_DEBUG_BUFFERS = 0x00008000
    FF_DEBUG_THREADS = 0x00010000
    FF_DEBUG_GREEN_MD = 0x00800000
    FF_DEBUG_NOMC = 0x01000000
    FF_DEBUG_VIS_MV_P_FOR = 0x00000001
    FF_DEBUG_VIS_MV_B_FOR = 0x00000002
    FF_DEBUG_VIS_MV_B_BACK = 0x00000004
    AV_EF_CRCCHECK = 1<<0
    AV_EF_BITSTREAM = 1<<1
    AV_EF_BUFFER = 1<<2
    AV_EF_EXPLODE = 1<<3
    AV_EF_IGNORE_ERR = 1<<15
    AV_EF_CAREFUL = 1<<16
    AV_EF_COMPLIANT = 1<<17
    AV_EF_AGGRESSIVE = 1<<18
    FF_DCT_AUTO = 0o0
    FF_DCT_FASTINT = 1
    FF_DCT_INT = 2
    FF_DCT_MMX = 3
    FF_DCT_ALTIVEC = 5
    FF_DCT_FAAN = 6
    FF_IDCT_AUTO = 0o0
    FF_IDCT_INT = 1
    FF_IDCT_SIMPLE = 2
    FF_IDCT_SIMPLEMMX = 3
    FF_IDCT_ARM = 7
    FF_IDCT_ALTIVEC = 8
    FF_IDCT_SH4 = 9
    FF_IDCT_SIMPLEARM = 10
    FF_IDCT_IPP = 13
    FF_IDCT_XVID = 14
    FF_IDCT_XVIDMMX = 14
    FF_IDCT_SIMPLEARMV5TE = 16
    FF_IDCT_SIMPLEARMV6 = 17
    FF_IDCT_SIMPLEVIS = 18
    FF_IDCT_FAAN = 20
    FF_IDCT_SIMPLENEON = 22
    FF_IDCT_SIMPLEALPHA = 23
    FF_IDCT_NONE = 24
    FF_IDCT_SIMPLEAUTO = 128
    FF_THREAD_FRAME = 1
    FF_THREAD_SLICE = 2
    FF_PROFILE_UNKNOWN = -99
    FF_PROFILE_RESERVED = -100
    FF_PROFILE_AAC_MAIN = 0o0
    FF_PROFILE_AAC_LOW = 1
    FF_PROFILE_AAC_SSR = 2
    FF_PROFILE_AAC_LTP = 3
    FF_PROFILE_AAC_HE = 4
    FF_PROFILE_AAC_HE_V2 = 28
    FF_PROFILE_AAC_LD = 22
    FF_PROFILE_AAC_ELD = 38
    FF_PROFILE_MPEG2_AAC_LOW = 128
    FF_PROFILE_MPEG2_AAC_HE = 131
    FF_PROFILE_DNXHD = 0o0
    FF_PROFILE_DNXHR_LB = 1
    FF_PROFILE_DNXHR_SQ = 2
    FF_PROFILE_DNXHR_HQ = 3
    FF_PROFILE_DNXHR_HQX = 4
    FF_PROFILE_DNXHR_444 = 5
    FF_PROFILE_DTS = 20
    FF_PROFILE_DTS_ES = 30
    FF_PROFILE_DTS_96_24 = 40
    FF_PROFILE_DTS_HD_HRA = 50
    FF_PROFILE_DTS_HD_MA = 60
    FF_PROFILE_DTS_EXPRESS = 70
    FF_PROFILE_MPEG2_422 = 0o0
    FF_PROFILE_MPEG2_HIGH = 1
    FF_PROFILE_MPEG2_SS = 2
    FF_PROFILE_MPEG2_SNR_SCALABLE = 3
    FF_PROFILE_MPEG2_MAIN = 4
    FF_PROFILE_MPEG2_SIMPLE = 5
    FF_PROFILE_H264_CONSTRAINED = 1<<9
    FF_PROFILE_H264_INTRA = 1<<11
    FF_PROFILE_H264_BASELINE = 66
    FF_PROFILE_H264_CONSTRAINED_BASELINE = 66| FF_PROFILE_H264_CONSTRAINED
    FF_PROFILE_H264_MAIN = 77
    FF_PROFILE_H264_EXTENDED = 88
    FF_PROFILE_H264_HIGH = 100
    FF_PROFILE_H264_HIGH_10 = 110
    FF_PROFILE_H264_HIGH_10_INTRA = 110| FF_PROFILE_H264_INTRA
    FF_PROFILE_H264_MULTIVIEW_HIGH = 118
    FF_PROFILE_H264_HIGH_422 = 122
    FF_PROFILE_H264_HIGH_422_INTRA = 122| FF_PROFILE_H264_INTRA
    FF_PROFILE_H264_STEREO_HIGH = 128
    FF_PROFILE_H264_HIGH_444 = 144
    FF_PROFILE_H264_HIGH_444_PREDICTIVE = 244
    FF_PROFILE_H264_HIGH_444_INTRA = 244| FF_PROFILE_H264_INTRA
    FF_PROFILE_H264_CAVLC_444 = 44
    FF_PROFILE_VC1_SIMPLE = 0o0
    FF_PROFILE_VC1_MAIN = 1
    FF_PROFILE_VC1_COMPLEX = 2
    FF_PROFILE_VC1_ADVANCED = 3
    FF_PROFILE_MPEG4_SIMPLE = 0o0
    FF_PROFILE_MPEG4_SIMPLE_SCALABLE = 1
    FF_PROFILE_MPEG4_CORE = 2
    FF_PROFILE_MPEG4_MAIN = 3
    FF_PROFILE_MPEG4_N_BIT = 4
    FF_PROFILE_MPEG4_SCALABLE_TEXTURE = 5
    FF_PROFILE_MPEG4_SIMPLE_FACE_ANIMATION = 6
    FF_PROFILE_MPEG4_BASIC_ANIMATED_TEXTURE = 7
    FF_PROFILE_MPEG4_HYBRID = 8
    FF_PROFILE_MPEG4_ADVANCED_REAL_TIME = 9
    FF_PROFILE_MPEG4_CORE_SCALABLE = 10
    FF_PROFILE_MPEG4_ADVANCED_CODING = 11
    FF_PROFILE_MPEG4_ADVANCED_CORE = 12
    FF_PROFILE_MPEG4_ADVANCED_SCALABLE_TEXTURE = 13
    FF_PROFILE_MPEG4_SIMPLE_STUDIO = 14
    FF_PROFILE_MPEG4_ADVANCED_SIMPLE = 15
    FF_PROFILE_JPEG2000_CSTREAM_RESTRICTION_0 = 1
    FF_PROFILE_JPEG2000_CSTREAM_RESTRICTION_1 = 2
    FF_PROFILE_JPEG2000_CSTREAM_NO_RESTRICTION = 32768
    FF_PROFILE_JPEG2000_DCINEMA_2K = 3
    FF_PROFILE_JPEG2000_DCINEMA_4K = 4
    FF_PROFILE_VP9_0 = 0o0
    FF_PROFILE_VP9_1 = 1
    FF_PROFILE_VP9_2 = 2
    FF_PROFILE_VP9_3 = 3
    FF_PROFILE_HEVC_MAIN = 1
    FF_PROFILE_HEVC_MAIN_10 = 2
    FF_PROFILE_HEVC_MAIN_STILL_PICTURE = 3
    FF_PROFILE_HEVC_REXT = 4
    FF_LEVEL_UNKNOWN = -99
    FF_SUB_CHARENC_MODE_DO_NOTHING = -1
    FF_SUB_CHARENC_MODE_AUTOMATIC = 0o0
    FF_SUB_CHARENC_MODE_PRE_DECODER = 1
    FF_CODEC_PROPERTY_LOSSLESS = 0x00000001
    FF_CODEC_PROPERTY_CLOSED_CAPTIONS = 0x00000002
    FF_SUB_TEXT_FMT_ASS = 0o0
    FF_SUB_TEXT_FMT_ASS_WITH_TIMINGS = 1
    AV_HWACCEL_CODEC_CAP_EXPERIMENTAL = 0x0200
    AV_HWACCEL_FLAG_IGNORE_LEVEL = 1<<0
    AV_HWACCEL_FLAG_ALLOW_HIGH_DEPTH = 1<<1
    AV_HWACCEL_FLAG_ALLOW_PROFILE_MISMATCH = 1<<2
    AV_SUBTITLE_FLAG_FORCED = 0x00000001
    AV_PARSER_PTS_NB = 4
    PARSER_FLAG_COMPLETE_FRAMES = 0x0001
    PARSER_FLAG_ONCE = 0x0002
    PARSER_FLAG_FETCHED_OFFSET = 0x0004
    PARSER_FLAG_USE_CODEC_TS = 0x1000
  enum AVCodecID : LibC::UInt
    AV_CODEC_ID_NONE = 0
    AV_CODEC_ID_MPEG1VIDEO = 1
    AV_CODEC_ID_MPEG2VIDEO = 2
    AV_CODEC_ID_MPEG2VIDEO_XVMC = 3
    AV_CODEC_ID_H261 = 4
    AV_CODEC_ID_H263 = 5
    AV_CODEC_ID_RV10 = 6
    AV_CODEC_ID_RV20 = 7
    AV_CODEC_ID_MJPEG = 8
    AV_CODEC_ID_MJPEGB = 9
    AV_CODEC_ID_LJPEG = 10
    AV_CODEC_ID_SP5X = 11
    AV_CODEC_ID_JPEGLS = 12
    AV_CODEC_ID_MPEG4 = 13
    AV_CODEC_ID_RAWVIDEO = 14
    AV_CODEC_ID_MSMPEG4V1 = 15
    AV_CODEC_ID_MSMPEG4V2 = 16
    AV_CODEC_ID_MSMPEG4V3 = 17
    AV_CODEC_ID_WMV1 = 18
    AV_CODEC_ID_WMV2 = 19
    AV_CODEC_ID_H263P = 20
    AV_CODEC_ID_H263I = 21
    AV_CODEC_ID_FLV1 = 22
    AV_CODEC_ID_SVQ1 = 23
    AV_CODEC_ID_SVQ3 = 24
    AV_CODEC_ID_DVVIDEO = 25
    AV_CODEC_ID_HUFFYUV = 26
    AV_CODEC_ID_CYUV = 27
    AV_CODEC_ID_H264 = 28
    AV_CODEC_ID_INDEO3 = 29
    AV_CODEC_ID_VP3 = 30
    AV_CODEC_ID_THEORA = 31
    AV_CODEC_ID_ASV1 = 32
    AV_CODEC_ID_ASV2 = 33
    AV_CODEC_ID_FFV1 = 34
    AV_CODEC_ID_4XM = 35
    AV_CODEC_ID_VCR1 = 36
    AV_CODEC_ID_CLJR = 37
    AV_CODEC_ID_MDEC = 38
    AV_CODEC_ID_ROQ = 39
    AV_CODEC_ID_INTERPLAY_VIDEO = 40
    AV_CODEC_ID_XAN_WC3 = 41
    AV_CODEC_ID_XAN_WC4 = 42
    AV_CODEC_ID_RPZA = 43
    AV_CODEC_ID_CINEPAK = 44
    AV_CODEC_ID_WS_VQA = 45
    AV_CODEC_ID_MSRLE = 46
    AV_CODEC_ID_MSVIDEO1 = 47
    AV_CODEC_ID_IDCIN = 48
    AV_CODEC_ID_8BPS = 49
    AV_CODEC_ID_SMC = 50
    AV_CODEC_ID_FLIC = 51
    AV_CODEC_ID_TRUEMOTION1 = 52
    AV_CODEC_ID_VMDVIDEO = 53
    AV_CODEC_ID_MSZH = 54
    AV_CODEC_ID_ZLIB = 55
    AV_CODEC_ID_QTRLE = 56
    AV_CODEC_ID_TSCC = 57
    AV_CODEC_ID_ULTI = 58
    AV_CODEC_ID_QDRAW = 59
    AV_CODEC_ID_VIXL = 60
    AV_CODEC_ID_QPEG = 61
    AV_CODEC_ID_PNG = 62
    AV_CODEC_ID_PPM = 63
    AV_CODEC_ID_PBM = 64
    AV_CODEC_ID_PGM = 65
    AV_CODEC_ID_PGMYUV = 66
    AV_CODEC_ID_PAM = 67
    AV_CODEC_ID_FFVHUFF = 68
    AV_CODEC_ID_RV30 = 69
    AV_CODEC_ID_RV40 = 70
    AV_CODEC_ID_VC1 = 71
    AV_CODEC_ID_WMV3 = 72
    AV_CODEC_ID_LOCO = 73
    AV_CODEC_ID_WNV1 = 74
    AV_CODEC_ID_AASC = 75
    AV_CODEC_ID_INDEO2 = 76
    AV_CODEC_ID_FRAPS = 77
    AV_CODEC_ID_TRUEMOTION2 = 78
    AV_CODEC_ID_BMP = 79
    AV_CODEC_ID_CSCD = 80
    AV_CODEC_ID_MMVIDEO = 81
    AV_CODEC_ID_ZMBV = 82
    AV_CODEC_ID_AVS = 83
    AV_CODEC_ID_SMACKVIDEO = 84
    AV_CODEC_ID_NUV = 85
    AV_CODEC_ID_KMVC = 86
    AV_CODEC_ID_FLASHSV = 87
    AV_CODEC_ID_CAVS = 88
    AV_CODEC_ID_JPEG2000 = 89
    AV_CODEC_ID_VMNC = 90
    AV_CODEC_ID_VP5 = 91
    AV_CODEC_ID_VP6 = 92
    AV_CODEC_ID_VP6F = 93
    AV_CODEC_ID_TARGA = 94
    AV_CODEC_ID_DSICINVIDEO = 95
    AV_CODEC_ID_TIERTEXSEQVIDEO = 96
    AV_CODEC_ID_TIFF = 97
    AV_CODEC_ID_GIF = 98
    AV_CODEC_ID_DXA = 99
    AV_CODEC_ID_DNXHD = 100
    AV_CODEC_ID_THP = 101
    AV_CODEC_ID_SGI = 102
    AV_CODEC_ID_C93 = 103
    AV_CODEC_ID_BETHSOFTVID = 104
    AV_CODEC_ID_PTX = 105
    AV_CODEC_ID_TXD = 106
    AV_CODEC_ID_VP6A = 107
    AV_CODEC_ID_AMV = 108
    AV_CODEC_ID_VB = 109
    AV_CODEC_ID_PCX = 110
    AV_CODEC_ID_SUNRAST = 111
    AV_CODEC_ID_INDEO4 = 112
    AV_CODEC_ID_INDEO5 = 113
    AV_CODEC_ID_MIMIC = 114
    AV_CODEC_ID_RL2 = 115
    AV_CODEC_ID_ESCAPE124 = 116
    AV_CODEC_ID_DIRAC = 117
    AV_CODEC_ID_BFI = 118
    AV_CODEC_ID_CMV = 119
    AV_CODEC_ID_MOTIONPIXELS = 120
    AV_CODEC_ID_TGV = 121
    AV_CODEC_ID_TGQ = 122
    AV_CODEC_ID_TQI = 123
    AV_CODEC_ID_AURA = 124
    AV_CODEC_ID_AURA2 = 125
    AV_CODEC_ID_V210X = 126
    AV_CODEC_ID_TMV = 127
    AV_CODEC_ID_V210 = 128
    AV_CODEC_ID_DPX = 129
    AV_CODEC_ID_MAD = 130
    AV_CODEC_ID_FRWU = 131
    AV_CODEC_ID_FLASHSV2 = 132
    AV_CODEC_ID_CDGRAPHICS = 133
    AV_CODEC_ID_R210 = 134
    AV_CODEC_ID_ANM = 135
    AV_CODEC_ID_BINKVIDEO = 136
    AV_CODEC_ID_IFF_ILBM = 137
    AV_CODEC_ID_KGV1 = 138
    AV_CODEC_ID_YOP = 139
    AV_CODEC_ID_VP8 = 140
    AV_CODEC_ID_PICTOR = 141
    AV_CODEC_ID_ANSI = 142
    AV_CODEC_ID_A64_MULTI = 143
    AV_CODEC_ID_A64_MULTI5 = 144
    AV_CODEC_ID_R10K = 145
    AV_CODEC_ID_MXPEG = 146
    AV_CODEC_ID_LAGARITH = 147
    AV_CODEC_ID_PRORES = 148
    AV_CODEC_ID_JV = 149
    AV_CODEC_ID_DFA = 150
    AV_CODEC_ID_WMV3IMAGE = 151
    AV_CODEC_ID_VC1IMAGE = 152
    AV_CODEC_ID_UTVIDEO = 153
    AV_CODEC_ID_BMV_VIDEO = 154
    AV_CODEC_ID_VBLE = 155
    AV_CODEC_ID_DXTORY = 156
    AV_CODEC_ID_V410 = 157
    AV_CODEC_ID_XWD = 158
    AV_CODEC_ID_CDXL = 159
    AV_CODEC_ID_XBM = 160
    AV_CODEC_ID_ZEROCODEC = 161
    AV_CODEC_ID_MSS1 = 162
    AV_CODEC_ID_MSA1 = 163
    AV_CODEC_ID_TSCC2 = 164
    AV_CODEC_ID_MTS2 = 165
    AV_CODEC_ID_CLLC = 166
    AV_CODEC_ID_MSS2 = 167
    AV_CODEC_ID_VP9 = 168
    AV_CODEC_ID_AIC = 169
    AV_CODEC_ID_ESCAPE130 = 170
    AV_CODEC_ID_G2M = 171
    AV_CODEC_ID_WEBP = 172
    AV_CODEC_ID_HNM4_VIDEO = 173
    AV_CODEC_ID_HEVC = 174
    AV_CODEC_ID_FIC = 175
    AV_CODEC_ID_ALIAS_PIX = 176
    AV_CODEC_ID_BRENDER_PIX = 177
    AV_CODEC_ID_PAF_VIDEO = 178
    AV_CODEC_ID_EXR = 179
    AV_CODEC_ID_VP7 = 180
    AV_CODEC_ID_SANM = 181
    AV_CODEC_ID_SGIRLE = 182
    AV_CODEC_ID_MVC1 = 183
    AV_CODEC_ID_MVC2 = 184
    AV_CODEC_ID_HQX = 185
    AV_CODEC_ID_TDSC = 186
    AV_CODEC_ID_HQ_HQA = 187
    AV_CODEC_ID_HAP = 188
    AV_CODEC_ID_DDS = 189
    AV_CODEC_ID_DXV = 190
    AV_CODEC_ID_SCREENPRESSO = 191
    AV_CODEC_ID_RSCC = 192
    AV_CODEC_ID_Y41P = 32768
    AV_CODEC_ID_AVRP = 32769
    AV_CODEC_ID_012V = 32770
    AV_CODEC_ID_AVUI = 32771
    AV_CODEC_ID_AYUV = 32772
    AV_CODEC_ID_TARGA_Y216 = 32773
    AV_CODEC_ID_V308 = 32774
    AV_CODEC_ID_V408 = 32775
    AV_CODEC_ID_YUV4 = 32776
    AV_CODEC_ID_AVRN = 32777
    AV_CODEC_ID_CPIA = 32778
    AV_CODEC_ID_XFACE = 32779
    AV_CODEC_ID_SNOW = 32780
    AV_CODEC_ID_SMVJPEG = 32781
    AV_CODEC_ID_APNG = 32782
    AV_CODEC_ID_DAALA = 32783
    AV_CODEC_ID_CFHD = 32784
    AV_CODEC_ID_TRUEMOTION2RT = 32785
    AV_CODEC_ID_M101 = 32786
    AV_CODEC_ID_MAGICYUV = 32787
    AV_CODEC_ID_SHEERVIDEO = 32788
    AV_CODEC_ID_YLC = 32789
    AV_CODEC_ID_PSD = 32790
    AV_CODEC_ID_PIXLET = 32791
    AV_CODEC_ID_SPEEDHQ = 32792
    AV_CODEC_ID_FMVC = 32793
    AV_CODEC_ID_SCPR = 32794
    AV_CODEC_ID_CLEARVIDEO = 32795
    AV_CODEC_ID_XPM = 32796
    AV_CODEC_ID_AV1 = 32797
    AV_CODEC_ID_BITPACKED = 32798
    AV_CODEC_ID_MSCC = 32799
    AV_CODEC_ID_SRGC = 32800
    AV_CODEC_ID_SVG = 32801
    AV_CODEC_ID_GDV = 32802
    AV_CODEC_ID_FITS = 32803
    AV_CODEC_ID_FIRST_AUDIO = 65536
    AV_CODEC_ID_PCM_S16LE = 65536
    AV_CODEC_ID_PCM_S16BE = 65537
    AV_CODEC_ID_PCM_U16LE = 65538
    AV_CODEC_ID_PCM_U16BE = 65539
    AV_CODEC_ID_PCM_S8 = 65540
    AV_CODEC_ID_PCM_U8 = 65541
    AV_CODEC_ID_PCM_MULAW = 65542
    AV_CODEC_ID_PCM_ALAW = 65543
    AV_CODEC_ID_PCM_S32LE = 65544
    AV_CODEC_ID_PCM_S32BE = 65545
    AV_CODEC_ID_PCM_U32LE = 65546
    AV_CODEC_ID_PCM_U32BE = 65547
    AV_CODEC_ID_PCM_S24LE = 65548
    AV_CODEC_ID_PCM_S24BE = 65549
    AV_CODEC_ID_PCM_U24LE = 65550
    AV_CODEC_ID_PCM_U24BE = 65551
    AV_CODEC_ID_PCM_S24DAUD = 65552
    AV_CODEC_ID_PCM_ZORK = 65553
    AV_CODEC_ID_PCM_S16LE_PLANAR = 65554
    AV_CODEC_ID_PCM_DVD = 65555
    AV_CODEC_ID_PCM_F32BE = 65556
    AV_CODEC_ID_PCM_F32LE = 65557
    AV_CODEC_ID_PCM_F64BE = 65558
    AV_CODEC_ID_PCM_F64LE = 65559
    AV_CODEC_ID_PCM_BLURAY = 65560
    AV_CODEC_ID_PCM_LXF = 65561
    AV_CODEC_ID_S302M = 65562
    AV_CODEC_ID_PCM_S8_PLANAR = 65563
    AV_CODEC_ID_PCM_S24LE_PLANAR = 65564
    AV_CODEC_ID_PCM_S32LE_PLANAR = 65565
    AV_CODEC_ID_PCM_S16BE_PLANAR = 65566
    AV_CODEC_ID_PCM_S64LE = 67584
    AV_CODEC_ID_PCM_S64BE = 67585
    AV_CODEC_ID_PCM_F16LE = 67586
    AV_CODEC_ID_PCM_F24LE = 67587
    AV_CODEC_ID_ADPCM_IMA_QT = 69632
    AV_CODEC_ID_ADPCM_IMA_WAV = 69633
    AV_CODEC_ID_ADPCM_IMA_DK3 = 69634
    AV_CODEC_ID_ADPCM_IMA_DK4 = 69635
    AV_CODEC_ID_ADPCM_IMA_WS = 69636
    AV_CODEC_ID_ADPCM_IMA_SMJPEG = 69637
    AV_CODEC_ID_ADPCM_MS = 69638
    AV_CODEC_ID_ADPCM_4XM = 69639
    AV_CODEC_ID_ADPCM_XA = 69640
    AV_CODEC_ID_ADPCM_ADX = 69641
    AV_CODEC_ID_ADPCM_EA = 69642
    AV_CODEC_ID_ADPCM_G726 = 69643
    AV_CODEC_ID_ADPCM_CT = 69644
    AV_CODEC_ID_ADPCM_SWF = 69645
    AV_CODEC_ID_ADPCM_YAMAHA = 69646
    AV_CODEC_ID_ADPCM_SBPRO_4 = 69647
    AV_CODEC_ID_ADPCM_SBPRO_3 = 69648
    AV_CODEC_ID_ADPCM_SBPRO_2 = 69649
    AV_CODEC_ID_ADPCM_THP = 69650
    AV_CODEC_ID_ADPCM_IMA_AMV = 69651
    AV_CODEC_ID_ADPCM_EA_R1 = 69652
    AV_CODEC_ID_ADPCM_EA_R3 = 69653
    AV_CODEC_ID_ADPCM_EA_R2 = 69654
    AV_CODEC_ID_ADPCM_IMA_EA_SEAD = 69655
    AV_CODEC_ID_ADPCM_IMA_EA_EACS = 69656
    AV_CODEC_ID_ADPCM_EA_XAS = 69657
    AV_CODEC_ID_ADPCM_EA_MAXIS_XA = 69658
    AV_CODEC_ID_ADPCM_IMA_ISS = 69659
    AV_CODEC_ID_ADPCM_G722 = 69660
    AV_CODEC_ID_ADPCM_IMA_APC = 69661
    AV_CODEC_ID_ADPCM_VIMA = 69662
    AV_CODEC_ID_VIMA = 69662
    AV_CODEC_ID_ADPCM_AFC = 71680
    AV_CODEC_ID_ADPCM_IMA_OKI = 71681
    AV_CODEC_ID_ADPCM_DTK = 71682
    AV_CODEC_ID_ADPCM_IMA_RAD = 71683
    AV_CODEC_ID_ADPCM_G726LE = 71684
    AV_CODEC_ID_ADPCM_THP_LE = 71685
    AV_CODEC_ID_ADPCM_PSX = 71686
    AV_CODEC_ID_ADPCM_AICA = 71687
    AV_CODEC_ID_ADPCM_IMA_DAT4 = 71688
    AV_CODEC_ID_ADPCM_MTAF = 71689
    AV_CODEC_ID_AMR_NB = 73728
    AV_CODEC_ID_AMR_WB = 73729
    AV_CODEC_ID_RA_144 = 77824
    AV_CODEC_ID_RA_288 = 77825
    AV_CODEC_ID_ROQ_DPCM = 81920
    AV_CODEC_ID_INTERPLAY_DPCM = 81921
    AV_CODEC_ID_XAN_DPCM = 81922
    AV_CODEC_ID_SOL_DPCM = 81923
    AV_CODEC_ID_SDX2_DPCM = 83968
    AV_CODEC_ID_GREMLIN_DPCM = 83969
    AV_CODEC_ID_MP2 = 86016
    AV_CODEC_ID_MP3 = 86017
    AV_CODEC_ID_AAC = 86018
    AV_CODEC_ID_AC3 = 86019
    AV_CODEC_ID_DTS = 86020
    AV_CODEC_ID_VORBIS = 86021
    AV_CODEC_ID_DVAUDIO = 86022
    AV_CODEC_ID_WMAV1 = 86023
    AV_CODEC_ID_WMAV2 = 86024
    AV_CODEC_ID_MACE3 = 86025
    AV_CODEC_ID_MACE6 = 86026
    AV_CODEC_ID_VMDAUDIO = 86027
    AV_CODEC_ID_FLAC = 86028
    AV_CODEC_ID_MP3ADU = 86029
    AV_CODEC_ID_MP3ON4 = 86030
    AV_CODEC_ID_SHORTEN = 86031
    AV_CODEC_ID_ALAC = 86032
    AV_CODEC_ID_WESTWOOD_SND1 = 86033
    AV_CODEC_ID_GSM = 86034
    AV_CODEC_ID_QDM2 = 86035
    AV_CODEC_ID_COOK = 86036
    AV_CODEC_ID_TRUESPEECH = 86037
    AV_CODEC_ID_TTA = 86038
    AV_CODEC_ID_SMACKAUDIO = 86039
    AV_CODEC_ID_QCELP = 86040
    AV_CODEC_ID_WAVPACK = 86041
    AV_CODEC_ID_DSICINAUDIO = 86042
    AV_CODEC_ID_IMC = 86043
    AV_CODEC_ID_MUSEPACK7 = 86044
    AV_CODEC_ID_MLP = 86045
    AV_CODEC_ID_GSM_MS = 86046
    AV_CODEC_ID_ATRAC3 = 86047
    AV_CODEC_ID_VOXWARE = 86048
    AV_CODEC_ID_APE = 86049
    AV_CODEC_ID_NELLYMOSER = 86050
    AV_CODEC_ID_MUSEPACK8 = 86051
    AV_CODEC_ID_SPEEX = 86052
    AV_CODEC_ID_WMAVOICE = 86053
    AV_CODEC_ID_WMAPRO = 86054
    AV_CODEC_ID_WMALOSSLESS = 86055
    AV_CODEC_ID_ATRAC3P = 86056
    AV_CODEC_ID_EAC3 = 86057
    AV_CODEC_ID_SIPR = 86058
    AV_CODEC_ID_MP1 = 86059
    AV_CODEC_ID_TWINVQ = 86060
    AV_CODEC_ID_TRUEHD = 86061
    AV_CODEC_ID_MP4ALS = 86062
    AV_CODEC_ID_ATRAC1 = 86063
    AV_CODEC_ID_BINKAUDIO_RDFT = 86064
    AV_CODEC_ID_BINKAUDIO_DCT = 86065
    AV_CODEC_ID_AAC_LATM = 86066
    AV_CODEC_ID_QDMC = 86067
    AV_CODEC_ID_CELT = 86068
    AV_CODEC_ID_G723_1 = 86069
    AV_CODEC_ID_G729 = 86070
    AV_CODEC_ID_8SVX_EXP = 86071
    AV_CODEC_ID_8SVX_FIB = 86072
    AV_CODEC_ID_BMV_AUDIO = 86073
    AV_CODEC_ID_RALF = 86074
    AV_CODEC_ID_IAC = 86075
    AV_CODEC_ID_ILBC = 86076
    AV_CODEC_ID_OPUS = 86077
    AV_CODEC_ID_COMFORT_NOISE = 86078
    AV_CODEC_ID_TAK = 86079
    AV_CODEC_ID_METASOUND = 86080
    AV_CODEC_ID_PAF_AUDIO = 86081
    AV_CODEC_ID_ON2AVC = 86082
    AV_CODEC_ID_DSS_SP = 86083
    AV_CODEC_ID_FFWAVESYNTH = 88064
    AV_CODEC_ID_SONIC = 88065
    AV_CODEC_ID_SONIC_LS = 88066
    AV_CODEC_ID_EVRC = 88067
    AV_CODEC_ID_SMV = 88068
    AV_CODEC_ID_DSD_LSBF = 88069
    AV_CODEC_ID_DSD_MSBF = 88070
    AV_CODEC_ID_DSD_LSBF_PLANAR = 88071
    AV_CODEC_ID_DSD_MSBF_PLANAR = 88072
    AV_CODEC_ID_4GV = 88073
    AV_CODEC_ID_INTERPLAY_ACM = 88074
    AV_CODEC_ID_XMA1 = 88075
    AV_CODEC_ID_XMA2 = 88076
    AV_CODEC_ID_DST = 88077
    AV_CODEC_ID_ATRAC3AL = 88078
    AV_CODEC_ID_ATRAC3PAL = 88079
    AV_CODEC_ID_DOLBY_E = 88080
    AV_CODEC_ID_FIRST_SUBTITLE = 94208
    AV_CODEC_ID_DVD_SUBTITLE = 94208
    AV_CODEC_ID_DVB_SUBTITLE = 94209
    AV_CODEC_ID_TEXT = 94210
    AV_CODEC_ID_XSUB = 94211
    AV_CODEC_ID_SSA = 94212
    AV_CODEC_ID_MOV_TEXT = 94213
    AV_CODEC_ID_HDMV_PGS_SUBTITLE = 94214
    AV_CODEC_ID_DVB_TELETEXT = 94215
    AV_CODEC_ID_SRT = 94216
    AV_CODEC_ID_MICRODVD = 96256
    AV_CODEC_ID_EIA_608 = 96257
    AV_CODEC_ID_JACOSUB = 96258
    AV_CODEC_ID_SAMI = 96259
    AV_CODEC_ID_REALTEXT = 96260
    AV_CODEC_ID_STL = 96261
    AV_CODEC_ID_SUBVIEWER1 = 96262
    AV_CODEC_ID_SUBVIEWER = 96263
    AV_CODEC_ID_SUBRIP = 96264
    AV_CODEC_ID_WEBVTT = 96265
    AV_CODEC_ID_MPL2 = 96266
    AV_CODEC_ID_VPLAYER = 96267
    AV_CODEC_ID_PJS = 96268
    AV_CODEC_ID_ASS = 96269
    AV_CODEC_ID_HDMV_TEXT_SUBTITLE = 96270
    AV_CODEC_ID_FIRST_UNKNOWN = 98304
    AV_CODEC_ID_TTF = 98304
    AV_CODEC_ID_SCTE_35 = 98305
    AV_CODEC_ID_BINTEXT = 100352
    AV_CODEC_ID_XBIN = 100353
    AV_CODEC_ID_IDF = 100354
    AV_CODEC_ID_OTF = 100355
    AV_CODEC_ID_SMPTE_KLV = 100356
    AV_CODEC_ID_DVD_NAV = 100357
    AV_CODEC_ID_TIMED_ID3 = 100358
    AV_CODEC_ID_BIN_DATA = 100359
    AV_CODEC_ID_PROBE = 102400
    AV_CODEC_ID_MPEG2TS = 131072
    AV_CODEC_ID_MPEG4SYSTEMS = 131073
    AV_CODEC_ID_FFMETADATA = 135168
    AV_CODEC_ID_WRAPPED_AVFRAME = 135169
  end
  struct AVCodecDescriptor
    id : AVCodecID
    type : AVMediaType
    name : LibC::Char*
    long_name : LibC::Char*
    props : LibC::Int
    mime_types : LibC::Char**
    profiles : AVProfile*
  end

  enum Motion_Est_ID : LibC::UInt
    ME_ZERO = 1
    ME_FULL = 2
    ME_LOG = 3
    ME_PHODS = 4
    ME_EPZS = 5
    ME_X1 = 6
    ME_HEX = 7
    ME_UMH = 8
    ME_TESA = 9
    ME_ITER = 50
  end
  enum AVDiscard : LibC::Int
    AVDISCARD_NONE = -16
    AVDISCARD_DEFAULT = 0
    AVDISCARD_NONREF = 8
    AVDISCARD_BIDIR = 16
    AVDISCARD_NONINTRA = 24
    AVDISCARD_NONKEY = 32
    AVDISCARD_ALL = 48
  end
  enum AVAudioServiceType : LibC::UInt
    AV_AUDIO_SERVICE_TYPE_MAIN = 0
    AV_AUDIO_SERVICE_TYPE_EFFECTS = 1
    AV_AUDIO_SERVICE_TYPE_VISUALLY_IMPAIRED = 2
    AV_AUDIO_SERVICE_TYPE_HEARING_IMPAIRED = 3
    AV_AUDIO_SERVICE_TYPE_DIALOGUE = 4
    AV_AUDIO_SERVICE_TYPE_COMMENTARY = 5
    AV_AUDIO_SERVICE_TYPE_EMERGENCY = 6
    AV_AUDIO_SERVICE_TYPE_VOICE_OVER = 7
    AV_AUDIO_SERVICE_TYPE_KARAOKE = 8
    AV_AUDIO_SERVICE_TYPE_NB = 9
  end
  struct RcOverride
    start_frame : LibC::Int
    end_frame : LibC::Int
    qscale : LibC::Int
    quality_factor : LibC::Float
  end

  struct AVPanScan
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

  enum AVPacketSideDataType : LibC::UInt
    AV_PKT_DATA_PALETTE = 0
    AV_PKT_DATA_NEW_EXTRADATA = 1
    AV_PKT_DATA_PARAM_CHANGE = 2
    AV_PKT_DATA_H263_MB_INFO = 3
    AV_PKT_DATA_REPLAYGAIN = 4
    AV_PKT_DATA_DISPLAYMATRIX = 5
    AV_PKT_DATA_STEREO3D = 6
    AV_PKT_DATA_AUDIO_SERVICE_TYPE = 7
    AV_PKT_DATA_QUALITY_STATS = 8
    AV_PKT_DATA_FALLBACK_TRACK = 9
    AV_PKT_DATA_CPB_PROPERTIES = 10
    AV_PKT_DATA_SKIP_SAMPLES = 70
    AV_PKT_DATA_JP_DUALMONO = 71
    AV_PKT_DATA_STRINGS_METADATA = 72
    AV_PKT_DATA_SUBTITLE_POSITION = 73
    AV_PKT_DATA_MATROSKA_BLOCKADDITIONAL = 74
    AV_PKT_DATA_WEBVTT_IDENTIFIER = 75
    AV_PKT_DATA_WEBVTT_SETTINGS = 76
    AV_PKT_DATA_METADATA_UPDATE = 77
    AV_PKT_DATA_MPEGTS_STREAM_ID = 78
    AV_PKT_DATA_MASTERING_DISPLAY_METADATA = 79
    AV_PKT_DATA_SPHERICAL = 80
    AV_PKT_DATA_CONTENT_LIGHT_LEVEL = 81
    AV_PKT_DATA_A53_CC = 82
    AV_PKT_DATA_NB = 83
  end
  struct AVPacketSideData
    data : UInt8*
    size : LibC::Int
    type : AVPacketSideDataType
  end

  struct AVPacket
    buf : AVBufferRef*
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

  enum AVSideDataParamChangeFlags : LibC::UInt
    AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_COUNT = 1
    AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_LAYOUT = 2
    AV_SIDE_DATA_PARAM_CHANGE_SAMPLE_RATE = 4
    AV_SIDE_DATA_PARAM_CHANGE_DIMENSIONS = 8
  end
  type AVCodecInternal = Void
  enum AVFieldOrder : LibC::UInt
    AV_FIELD_UNKNOWN = 0
    AV_FIELD_PROGRESSIVE = 1
    AV_FIELD_TT = 2
    AV_FIELD_BB = 3
    AV_FIELD_TB = 4
    AV_FIELD_BT = 5
  end
  struct AVCodecContext
    av_class : AVClass*
    log_level_offset : LibC::Int
    codec_type : AVMediaType
    codec : AVCodec*
    codec_name : StaticArray(LibC::Char, 32)
    codec_id : AVCodecID
    codec_tag : LibC::UInt
    stream_codec_tag : LibC::UInt
    priv_data : Void*
    internal : AVCodecInternal*
    opaque : Void*
    bit_rate : Int64
    bit_rate_tolerance : LibC::Int
    global_quality : LibC::Int
    compression_level : LibC::Int
    flags : LibC::Int
    flags2 : LibC::Int
    extradata : UInt8*
    extradata_size : LibC::Int
    time_base : AVRational
    ticks_per_frame : LibC::Int
    delay : LibC::Int
    width : LibC::Int
    height : LibC::Int
    coded_width : LibC::Int
    coded_height : LibC::Int
    gop_size : LibC::Int
    pix_fmt : AVPixelFormat
    me_method : LibC::Int
    draw_horiz_band : (AVCodecContext*, AVFrame*, LibC::Int*, LibC::Int, LibC::Int, LibC::Int) -> Void*
    get_format : (AVCodecContext*, AVPixelFormat*) -> AVPixelFormat*
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
    sample_aspect_ratio : AVRational
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
    color_primaries : AVColorPrimaries
    color_trc : AVColorTransferCharacteristic
    colorspace : AVColorSpace
    color_range : AVColorRange
    chroma_sample_location : AVChromaLocation
    slices : LibC::Int
    field_order : AVFieldOrder
    sample_rate : LibC::Int
    channels : LibC::Int
    sample_fmt : AVSampleFormat
    frame_size : LibC::Int
    frame_number : LibC::Int
    block_align : LibC::Int
    cutoff : LibC::Int
    channel_layout : UInt64
    request_channel_layout : UInt64
    audio_service_type : AVAudioServiceType
    request_sample_fmt : AVSampleFormat
    get_buffer2 : (AVCodecContext*, AVFrame*, LibC::Int) -> LibC::Int*
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
    rtp_callback : (AVCodecContext*, Void*, LibC::Int, LibC::Int) -> Void*
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
    coded_frame : AVFrame*
    thread_count : LibC::Int
    thread_type : LibC::Int
    active_thread_type : LibC::Int
    thread_safe_callbacks : LibC::Int
    execute : (AVCodecContext*, (AVCodecContext*, Void*) -> LibC::Int*, Void*, LibC::Int*, LibC::Int, LibC::Int) -> LibC::Int*
    execute2 : (AVCodecContext*, (AVCodecContext*, Void*, LibC::Int, LibC::Int) -> LibC::Int*, Void*, LibC::Int*, LibC::Int) -> LibC::Int*
    nsse_weight : LibC::Int
    profile : LibC::Int
    level : LibC::Int
    skip_loop_filter : AVDiscard
    skip_idct : AVDiscard
    skip_frame : AVDiscard
    subtitle_header : UInt8*
    subtitle_header_size : LibC::Int
    error_rate : LibC::Int
    vbv_delay : UInt64
    side_data_only_packets : LibC::Int
    initial_padding : LibC::Int
    framerate : AVRational
    sw_pix_fmt : AVPixelFormat
    pkt_timebase : AVRational
    codec_descriptor : AVCodecDescriptor*
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
    coded_side_data : AVPacketSideData*
    nb_coded_side_data : LibC::Int
    hw_frames_ctx : AVBufferRef*
    sub_text_format : LibC::Int
    trailing_padding : LibC::Int
    max_pixels : Int64
    hw_device_ctx : AVBufferRef*
    hwaccel_flags : LibC::Int
    apply_cropping : LibC::Int
  end

  fun av_codec_get_pkt_timebase(AVCodecContext*) : AVRational
  fun av_codec_set_pkt_timebase(AVCodecContext*, AVRational) : Void
  fun av_codec_get_codec_descriptor(AVCodecContext*) : AVCodecDescriptor*
  fun av_codec_set_codec_descriptor(AVCodecContext*, AVCodecDescriptor*) : Void
  fun av_codec_get_codec_properties(AVCodecContext*) : LibC::UInt
  fun av_codec_get_lowres(AVCodecContext*) : LibC::Int
  fun av_codec_set_lowres(AVCodecContext*, LibC::Int) : Void
  fun av_codec_get_seek_preroll(AVCodecContext*) : LibC::Int
  fun av_codec_set_seek_preroll(AVCodecContext*, LibC::Int) : Void
  fun av_codec_get_chroma_intra_matrix(AVCodecContext*) : UInt16*
  fun av_codec_set_chroma_intra_matrix(AVCodecContext*, UInt16*) : Void
  struct AVProfile
    profile : LibC::Int
    name : LibC::Char*
  end

  type AVCodecDefault = Void
  type AVSubtitle = Void
  struct AVCodec
    name : LibC::Char*
    long_name : LibC::Char*
    type : AVMediaType
    id : AVCodecID
    capabilities : LibC::Int
    supported_framerates : AVRational*
    pix_fmts : AVPixelFormat*
    supported_samplerates : LibC::Int*
    sample_fmts : AVSampleFormat*
    channel_layouts : UInt64*
    max_lowres : UInt8
    priv_class : AVClass*
    profiles : AVProfile*
    priv_data_size : LibC::Int
    next : AVCodec*
    init_thread_copy : (AVCodecContext*) -> LibC::Int*
    update_thread_context : (AVCodecContext*, AVCodecContext*) -> LibC::Int*
    defaults : AVCodecDefault*
    init_static_data : (AVCodec*) -> Void*
    init : (AVCodecContext*) -> LibC::Int*
    encode_sub : (AVCodecContext*, LibC::Char*, LibC::Int, AVSubtitle*) -> LibC::Int*
    encode2 : (AVCodecContext*, AVPacket*, AVFrame*, LibC::Int*) -> LibC::Int*
    decode : (AVCodecContext*, Void*, LibC::Int*, AVPacket*) -> LibC::Int*
    close : (AVCodecContext*) -> LibC::Int*
    send_frame : (AVCodecContext*, AVFrame*) -> LibC::Int*
    receive_packet : (AVCodecContext*, AVPacket*) -> LibC::Int*
    receive_frame : (AVCodecContext*, AVFrame*) -> LibC::Int*
    flush : (AVCodecContext*) -> Void*
    caps_internal : LibC::Int
    bsfs : LibC::Char*
  end

  fun av_codec_get_max_lowres(AVCodec*) : LibC::Int
  type MpegEncContext = Void
  struct AVHWAccel
    name : LibC::Char*
    type : AVMediaType
    id : AVCodecID
    pix_fmt : AVPixelFormat
    capabilities : LibC::Int
    next : AVHWAccel*
    alloc_frame : (AVCodecContext*, AVFrame*) -> LibC::Int*
    start_frame : (AVCodecContext*, LibC::Char*, LibC::UInt) -> LibC::Int*
    decode_slice : (AVCodecContext*, LibC::Char*, LibC::UInt) -> LibC::Int*
    end_frame : (AVCodecContext*) -> LibC::Int*
    frame_priv_data_size : LibC::Int
    decode_mb : (MpegEncContext*) -> Void*
    init : (AVCodecContext*) -> LibC::Int*
    uninit : (AVCodecContext*) -> LibC::Int*
    priv_data_size : LibC::Int
    caps_internal : LibC::Int
  end

  struct AVPicture
    data : StaticArray(UInt8*, 8)
    linesize : StaticArray(LibC::Int, 8)
  end

  enum AVSubtitleType : LibC::UInt
    SUBTITLE_NONE = 0
    SUBTITLE_BITMAP = 1
    SUBTITLE_TEXT = 2
    SUBTITLE_ASS = 3
  end
  struct AVSubtitleRect
    x : LibC::Int
    y : LibC::Int
    w : LibC::Int
    h : LibC::Int
    nb_colors : LibC::Int
    pict : AVPicture
    data : StaticArray(UInt8*, 4)
    linesize : StaticArray(LibC::Int, 4)
    type : AVSubtitleType
    text : LibC::Char*
    ass : LibC::Char*
    flags : LibC::Int
  end

  struct AVSubtitle
    format : UInt16
    start_display_time : UInt32
    end_display_time : UInt32
    num_rects : LibC::UInt
    rects : AVSubtitleRect**
    pts : Int64
  end

  struct AVCodecParameters
    codec_type : AVMediaType
    codec_id : AVCodecID
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
    sample_aspect_ratio : AVRational
    field_order : AVFieldOrder
    color_range : AVColorRange
    color_primaries : AVColorPrimaries
    color_trc : AVColorTransferCharacteristic
    color_space : AVColorSpace
    chroma_location : AVChromaLocation
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

  fun av_codec_next(AVCodec*) : AVCodec*
  fun avcodec_version() : LibC::UInt
  fun avcodec_configuration() : LibC::Char*
  fun avcodec_license() : LibC::Char*
  fun avcodec_register(AVCodec*) : Void
  fun avcodec_register_all() : Void
  fun avcodec_alloc_context3(AVCodec*) : AVCodecContext*
  fun avcodec_free_context(AVCodecContext**) : Void
  fun avcodec_get_context_defaults3(AVCodecContext*, AVCodec*) : LibC::Int
  fun avcodec_get_class() : AVClass*
  fun avcodec_get_frame_class() : AVClass*
  fun avcodec_get_subtitle_rect_class() : AVClass*
  fun avcodec_copy_context(AVCodecContext*, AVCodecContext*) : LibC::Int
  fun avcodec_parameters_alloc() : AVCodecParameters*
  fun avcodec_parameters_free(AVCodecParameters**) : Void
  fun avcodec_parameters_copy(AVCodecParameters*, AVCodecParameters*) : LibC::Int
  fun avcodec_parameters_from_context(AVCodecParameters*, AVCodecContext*) : LibC::Int
  fun avcodec_parameters_to_context(AVCodecContext*, AVCodecParameters*) : LibC::Int
  fun avcodec_open2(AVCodecContext*, AVCodec*, AVDictionary**) : LibC::Int
  fun avcodec_close(AVCodecContext*) : LibC::Int
  fun avsubtitle_free(AVSubtitle*) : Void
  fun av_packet_alloc() : AVPacket*
  fun av_packet_clone(AVPacket*) : AVPacket*
  fun av_packet_free(AVPacket**) : Void
  fun av_init_packet(AVPacket*) : Void
  fun av_new_packet(AVPacket*, LibC::Int) : LibC::Int
  fun av_shrink_packet(AVPacket*, LibC::Int) : Void
  fun av_grow_packet(AVPacket*, LibC::Int) : LibC::Int
  fun av_packet_from_data(AVPacket*, UInt8*, LibC::Int) : LibC::Int
  fun av_dup_packet(AVPacket*) : LibC::Int
  fun av_copy_packet(AVPacket*, AVPacket*) : LibC::Int
  fun av_copy_packet_side_data(AVPacket*, AVPacket*) : LibC::Int
  fun av_free_packet(AVPacket*) : Void
  fun av_packet_new_side_data(AVPacket*, AVPacketSideDataType, LibC::Int) : UInt8*
  fun av_packet_add_side_data(AVPacket*, AVPacketSideDataType, UInt8*, SizeT) : LibC::Int
  fun av_packet_shrink_side_data(AVPacket*, AVPacketSideDataType, LibC::Int) : LibC::Int
  fun av_packet_get_side_data(AVPacket*, AVPacketSideDataType, LibC::Int*) : UInt8*
  fun av_packet_merge_side_data(AVPacket*) : LibC::Int
  fun av_packet_split_side_data(AVPacket*) : LibC::Int
  fun av_packet_side_data_name(AVPacketSideDataType) : LibC::Char*
  fun av_packet_pack_dictionary(AVDictionary*, LibC::Int*) : UInt8*
  fun av_packet_unpack_dictionary(UInt8*, LibC::Int, AVDictionary**) : LibC::Int
  fun av_packet_free_side_data(AVPacket*) : Void
  fun av_packet_ref(AVPacket*, AVPacket*) : LibC::Int
  fun av_packet_unref(AVPacket*) : Void
  fun av_packet_move_ref(AVPacket*, AVPacket*) : Void
  fun av_packet_copy_props(AVPacket*, AVPacket*) : LibC::Int
  fun av_packet_rescale_ts(AVPacket*, AVRational, AVRational) : Void
  fun avcodec_find_decoder(AVCodecID) : AVCodec*
  fun avcodec_find_decoder_by_name(LibC::Char*) : AVCodec*
  fun avcodec_default_get_buffer2(AVCodecContext*, AVFrame*, LibC::Int) : LibC::Int
  fun avcodec_get_edge_width() : LibC::UInt
  fun avcodec_align_dimensions(AVCodecContext*, LibC::Int*, LibC::Int*) : Void
  fun avcodec_align_dimensions2(AVCodecContext*, LibC::Int*, LibC::Int*, StaticArray(LibC::Int, 8)) : Void
  fun avcodec_enum_to_chroma_pos(LibC::Int*, LibC::Int*, AVChromaLocation) : LibC::Int
  fun avcodec_chroma_pos_to_enum(LibC::Int, LibC::Int) : AVChromaLocation
  fun avcodec_decode_audio4(AVCodecContext*, AVFrame*, LibC::Int*, AVPacket*) : LibC::Int
  fun avcodec_decode_video2(AVCodecContext*, AVFrame*, LibC::Int*, AVPacket*) : LibC::Int
  fun avcodec_decode_subtitle2(AVCodecContext*, AVSubtitle*, LibC::Int*, AVPacket*) : LibC::Int
  fun avcodec_send_packet(AVCodecContext*, AVPacket*) : LibC::Int
  fun avcodec_receive_frame(AVCodecContext*, AVFrame*) : LibC::Int
  fun avcodec_send_frame(AVCodecContext*, AVFrame*) : LibC::Int
  fun avcodec_receive_packet(AVCodecContext*, AVPacket*) : LibC::Int
  enum AVPictureStructure : LibC::UInt
    AV_PICTURE_STRUCTURE_UNKNOWN = 0
    AV_PICTURE_STRUCTURE_TOP_FIELD = 1
    AV_PICTURE_STRUCTURE_BOTTOM_FIELD = 2
    AV_PICTURE_STRUCTURE_FRAME = 3
  end
  struct AVCodecParserContext
    priv_data : Void*
    parser : AVCodecParser*
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
    field_order : AVFieldOrder
    picture_structure : AVPictureStructure
    output_picture_number : LibC::Int
    width : LibC::Int
    height : LibC::Int
    coded_width : LibC::Int
    coded_height : LibC::Int
    format : LibC::Int
  end

  struct AVCodecParser
    codec_ids : StaticArray(LibC::Int, 5)
    priv_data_size : LibC::Int
    parser_init : (AVCodecParserContext*) -> LibC::Int*
    parser_parse : (AVCodecParserContext*, AVCodecContext*, LibC::Char**, LibC::Int*, LibC::Char*, LibC::Int) -> LibC::Int*
    parser_close : (AVCodecParserContext*) -> Void*
    split : (AVCodecContext*, LibC::Char*, LibC::Int) -> LibC::Int*
    next : AVCodecParser*
  end

  fun av_parser_next(AVCodecParser*) : AVCodecParser*
  fun av_register_codec_parser(AVCodecParser*) : Void
  fun av_parser_init(LibC::Int) : AVCodecParserContext*
  fun av_parser_parse2(AVCodecParserContext*, AVCodecContext*, UInt8**, LibC::Int*, UInt8*, LibC::Int, Int64, Int64, Int64) : LibC::Int
  fun av_parser_change(AVCodecParserContext*, AVCodecContext*, UInt8**, LibC::Int*, UInt8*, LibC::Int, LibC::Int) : LibC::Int
  fun av_parser_close(AVCodecParserContext*) : Void
  fun avcodec_find_encoder(AVCodecID) : AVCodec*
  fun avcodec_find_encoder_by_name(LibC::Char*) : AVCodec*
  fun avcodec_encode_audio2(AVCodecContext*, AVPacket*, AVFrame*, LibC::Int*) : LibC::Int
  fun avcodec_encode_video2(AVCodecContext*, AVPacket*, AVFrame*, LibC::Int*) : LibC::Int
  fun avcodec_encode_subtitle(AVCodecContext*, UInt8*, LibC::Int, AVSubtitle*) : LibC::Int
  type ReSampleContext = Void
  type AVResampleContext = Void
  fun av_audio_resample_init(LibC::Int, LibC::Int, LibC::Int, LibC::Int, AVSampleFormat, AVSampleFormat, LibC::Int, LibC::Int, LibC::Int, LibC::Double) : ReSampleContext*
  fun audio_resample(ReSampleContext*, LibC::Short*, LibC::Short*, LibC::Int) : LibC::Int
  fun audio_resample_close(ReSampleContext*) : Void
  fun av_resample_init(LibC::Int, LibC::Int, LibC::Int, LibC::Int, LibC::Int, LibC::Double) : AVResampleContext*
  fun av_resample(AVResampleContext*, LibC::Short*, LibC::Short*, LibC::Int*, LibC::Int, LibC::Int, LibC::Int) : LibC::Int
  fun av_resample_compensate(AVResampleContext*, LibC::Int, LibC::Int) : Void
  fun av_resample_close(AVResampleContext*) : Void
  fun avpicture_alloc(AVPicture*, AVPixelFormat, LibC::Int, LibC::Int) : LibC::Int
  fun avpicture_free(AVPicture*) : Void
  fun avpicture_fill(AVPicture*, UInt8*, AVPixelFormat, LibC::Int, LibC::Int) : LibC::Int
  fun avpicture_layout(AVPicture*, AVPixelFormat, LibC::Int, LibC::Int, LibC::Char*, LibC::Int) : LibC::Int
  fun avpicture_get_size(AVPixelFormat, LibC::Int, LibC::Int) : LibC::Int
  fun av_picture_copy(AVPicture*, AVPicture*, AVPixelFormat, LibC::Int, LibC::Int) : Void
  fun av_picture_crop(AVPicture*, AVPicture*, AVPixelFormat, LibC::Int, LibC::Int) : LibC::Int
  fun av_picture_pad(AVPicture*, AVPicture*, LibC::Int, LibC::Int, AVPixelFormat, LibC::Int, LibC::Int, LibC::Int, LibC::Int, LibC::Int*) : LibC::Int
  fun avcodec_get_chroma_sub_sample(AVPixelFormat, LibC::Int*, LibC::Int*) : Void
  fun avcodec_pix_fmt_to_codec_tag(AVPixelFormat) : LibC::UInt
  fun avcodec_get_pix_fmt_loss(AVPixelFormat, AVPixelFormat, LibC::Int) : LibC::Int
  fun avcodec_find_best_pix_fmt_of_list(AVPixelFormat*, AVPixelFormat, LibC::Int, LibC::Int*) : AVPixelFormat
  fun avcodec_find_best_pix_fmt_of_2(AVPixelFormat, AVPixelFormat, AVPixelFormat, LibC::Int, LibC::Int*) : AVPixelFormat
  fun avcodec_find_best_pix_fmt2(AVPixelFormat, AVPixelFormat, AVPixelFormat, LibC::Int, LibC::Int*) : AVPixelFormat
  fun avcodec_default_get_format(AVCodecContext*, AVPixelFormat*) : AVPixelFormat
  fun avcodec_set_dimensions(AVCodecContext*, LibC::Int, LibC::Int) : Void
  fun av_get_codec_tag_string(LibC::Char*, SizeT, LibC::UInt) : SizeT
  fun avcodec_string(LibC::Char*, LibC::Int, AVCodecContext*, LibC::Int) : Void
  fun av_get_profile_name(AVCodec*, LibC::Int) : LibC::Char*
  fun avcodec_profile_name(AVCodecID, LibC::Int) : LibC::Char*
  fun avcodec_default_execute(AVCodecContext*, (AVCodecContext*, Void*) -> LibC::Int*, Void*, LibC::Int*, LibC::Int, LibC::Int) : LibC::Int
  fun avcodec_default_execute2(AVCodecContext*, (AVCodecContext*, Void*, LibC::Int, LibC::Int) -> LibC::Int*, Void*, LibC::Int*, LibC::Int) : LibC::Int
  fun avcodec_fill_audio_frame(AVFrame*, LibC::Int, AVSampleFormat, UInt8*, LibC::Int, LibC::Int) : LibC::Int
  fun avcodec_flush_buffers(AVCodecContext*) : Void
  fun av_get_bits_per_sample(AVCodecID) : LibC::Int
  fun av_get_pcm_codec(AVSampleFormat, LibC::Int) : AVCodecID
  fun av_get_exact_bits_per_sample(AVCodecID) : LibC::Int
  fun av_get_audio_frame_duration(AVCodecContext*, LibC::Int) : LibC::Int
  fun av_get_audio_frame_duration2(AVCodecParameters*, LibC::Int) : LibC::Int
  struct AVBitStreamFilterContext
    priv_data : Void*
    filter : AVBitStreamFilter*
    parser : AVCodecParserContext*
    next : AVBitStreamFilterContext*
    args : LibC::Char*
  end

  type AVBSFInternal = Void
  struct AVBSFContext
    av_class : AVClass*
    filter : AVBitStreamFilter*
    internal : AVBSFInternal*
    priv_data : Void*
    par_in : AVCodecParameters*
    par_out : AVCodecParameters*
    time_base_in : AVRational
    time_base_out : AVRational
  end

  struct AVBitStreamFilter
    name : LibC::Char*
    codec_ids : AVCodecID*
    priv_class : AVClass*
    priv_data_size : LibC::Int
    init : (AVBSFContext*) -> LibC::Int*
    filter : (AVBSFContext*, AVPacket*) -> LibC::Int*
    close : (AVBSFContext*) -> Void*
  end

  fun av_register_bitstream_filter(AVBitStreamFilter*) : Void
  fun av_bitstream_filter_init(LibC::Char*) : AVBitStreamFilterContext*
  fun av_bitstream_filter_filter(AVBitStreamFilterContext*, AVCodecContext*, LibC::Char*, UInt8**, LibC::Int*, UInt8*, LibC::Int, LibC::Int) : LibC::Int
  fun av_bitstream_filter_close(AVBitStreamFilterContext*) : Void
  fun av_bitstream_filter_next(AVBitStreamFilter*) : AVBitStreamFilter*
  fun av_bsf_get_by_name(LibC::Char*) : AVBitStreamFilter*
  fun av_bsf_next(Void**) : AVBitStreamFilter*
  fun av_bsf_alloc(AVBitStreamFilter*, AVBSFContext**) : LibC::Int
  fun av_bsf_init(AVBSFContext*) : LibC::Int
  fun av_bsf_send_packet(AVBSFContext*, AVPacket*) : LibC::Int
  fun av_bsf_receive_packet(AVBSFContext*, AVPacket*) : LibC::Int
  fun av_bsf_free(AVBSFContext**) : Void
  fun av_bsf_get_class() : AVClass*
  type AVBSFList = Void
  fun av_bsf_list_alloc() : AVBSFList*
  fun av_bsf_list_free(AVBSFList**) : Void
  fun av_bsf_list_append(AVBSFList*, AVBSFContext*) : LibC::Int
  fun av_bsf_list_append2(AVBSFList*, LibC::Char*, AVDictionary**) : LibC::Int
  fun av_bsf_list_finalize(AVBSFList**, AVBSFContext**) : LibC::Int
  fun av_bsf_list_parse_str(LibC::Char*, AVBSFContext**) : LibC::Int
  fun av_bsf_get_null_filter(AVBSFContext**) : LibC::Int
  fun av_fast_padded_malloc(Void*, LibC::UInt*, SizeT) : Void
  fun av_fast_padded_mallocz(Void*, LibC::UInt*, SizeT) : Void
  fun av_xiphlacing(LibC::Char*, LibC::UInt) : LibC::UInt
  fun av_log_missing_feature(Void*, LibC::Char*, LibC::Int) : Void
  fun av_log_ask_for_sample(Void*, LibC::Char*) : Void
  fun av_register_hwaccel(AVHWAccel*) : Void
  fun av_hwaccel_next(AVHWAccel*) : AVHWAccel*
  enum AVLockOp : LibC::UInt
    AV_LOCK_CREATE = 0
    AV_LOCK_OBTAIN = 1
    AV_LOCK_RELEASE = 2
    AV_LOCK_DESTROY = 3
  end
  fun av_lockmgr_register((Void**, AVLockOp) -> LibC::Int*) : LibC::Int
  fun avcodec_get_type(AVCodecID) : AVMediaType
  fun avcodec_get_name(AVCodecID) : LibC::Char*
  fun avcodec_is_open(AVCodecContext*) : LibC::Int
  fun av_codec_is_encoder(AVCodec*) : LibC::Int
  fun av_codec_is_decoder(AVCodec*) : LibC::Int
  fun avcodec_descriptor_get(AVCodecID) : AVCodecDescriptor*
  fun avcodec_descriptor_next(AVCodecDescriptor*) : AVCodecDescriptor*
  fun avcodec_descriptor_get_by_name(LibC::Char*) : AVCodecDescriptor*
  fun av_cpb_properties_alloc(SizeT*) : AVCPBProperties*
end
end
