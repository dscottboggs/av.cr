module AV
  lib LibAVUtil
    #   AVUTIL_CPU_H =
    AV_CPU_FLAG_FORCE     = 0x80000000
    AV_CPU_FLAG_MMX       =     0x0001
    AV_CPU_FLAG_MMXEXT    =     0x0002
    AV_CPU_FLAG_MMX2      =     0x0002
    AV_CPU_FLAG_3DNOW     =     0x0004
    AV_CPU_FLAG_SSE       =     0x0008
    AV_CPU_FLAG_SSE2      =     0x0010
    AV_CPU_FLAG_SSE2SLOW  = 0x40000000
    AV_CPU_FLAG_3DNOWEXT  =     0x0020
    AV_CPU_FLAG_SSE3      =     0x0040
    AV_CPU_FLAG_SSE3SLOW  = 0x20000000
    AV_CPU_FLAG_SSSE3     =     0x0080
    AV_CPU_FLAG_SSSE3SLOW =  0x4000000
    AV_CPU_FLAG_ATOM      = 0x10000000
    AV_CPU_FLAG_SSE4      =     0x0100
    AV_CPU_FLAG_SSE42     =     0x0200
    AV_CPU_FLAG_AESNI     =    0x80000
    AV_CPU_FLAG_AVX       =     0x4000
    AV_CPU_FLAG_AVXSLOW   =  0x8000000
    AV_CPU_FLAG_XOP       =     0x0400
    AV_CPU_FLAG_FMA4      =     0x0800
    AV_CPU_FLAG_CMOV      =     0x1000
    AV_CPU_FLAG_AVX2      =     0x8000
    AV_CPU_FLAG_FMA3      =    0x10000
    AV_CPU_FLAG_BMI1      =    0x20000
    AV_CPU_FLAG_BMI2      =    0x40000
    AV_CPU_FLAG_ALTIVEC   =     0x0001
    AV_CPU_FLAG_VSX       =     0x0002
    AV_CPU_FLAG_POWER8    =     0x0004
    AV_CPU_FLAG_ARMV5TE   = 1 << 0
    AV_CPU_FLAG_ARMV6     = 1 << 1
    AV_CPU_FLAG_ARMV6T2   = 1 << 2
    AV_CPU_FLAG_VFP       = 1 << 3
    AV_CPU_FLAG_VFPV3     = 1 << 4
    AV_CPU_FLAG_NEON      = 1 << 5
    AV_CPU_FLAG_ARMV8     = 1 << 6
    AV_CPU_FLAG_VFP_VM    = 1 << 7
    AV_CPU_FLAG_SETEND    = 1 << 16
    fun av_get_cpu_flags : LibC::Int
    fun av_force_cpu_flags(LibC::Int) : Void
    fun av_set_cpu_flags_mask(LibC::Int) : Void
    fun av_parse_cpu_flags(LibC::Char*) : LibC::Int
    fun av_parse_cpu_caps(LibC::UInt*, LibC::Char*) : LibC::Int
    fun av_cpu_count : LibC::Int
    fun av_cpu_max_align : SizeT
  end
end
