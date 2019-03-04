module AV
  lib LibAVUtil

    enum CPUFlag
      CPU_FORCE     = 0x80000000
      CPU_MMX       =     0x0001
      CPU_MMXEXT    =     0x0002
      CPU_MMX2      =     0x0002
      CPU_3DNOW     =     0x0004
      CPU_SSE       =     0x0008
      CPU_SSE2      =     0x0010
      CPU_SSE2SLOW  = 0x40000000
      CPU_3DNOWEXT  =     0x0020
      CPU_SSE3      =     0x0040
      CPU_SSE3SLOW  = 0x20000000
      CPU_SSSE3     =     0x0080
      CPU_SSSE3SLOW =  0x4000000
      CPU_ATOM      = 0x10000000
      CPU_SSE4      =     0x0100
      CPU_SSE42     =     0x0200
      CPU_AESNI     =    0x80000
      CPU_AVX       =     0x4000
      CPU_AVXSLOW   =  0x8000000
      CPU_XOP       =     0x0400
      CPU_FMA4      =     0x0800
      CPU_CMOV      =     0x1000
      CPU_AVX2      =     0x8000
      CPU_FMA3      =    0x10000
      CPU_BMI1      =    0x20000
      CPU_BMI2      =    0x40000
      CPU_ALTIVEC   =     0x0001
      CPU_VSX       =     0x0002
      CPU_POWER8    =     0x0004
      CPU_ARMV5TE   = 1 << 0
      CPU_ARMV6     = 1 << 1
      CPU_ARMV6T2   = 1 << 2
      CPU_VFP       = 1 << 3
      CPU_VFPV3     = 1 << 4
      CPU_NEON      = 1 << 5
      CPU_ARMV8     = 1 << 6
      CPU_VFP_VM    = 1 << 7
      CPU_SETEND    = 1 << 16
    end
    fun get_cpu_flags = av_get_cpu_flags : CPUFlag
    fun force_cpu_flags = av_force_cpu_flags(CPUFlag) : Void
    fun set_cpu_flags_mask = av_set_cpu_flags_mask(LibC::Int) : Void
    fun parse_cpu_flags = av_parse_cpu_flags(LibC::Char*) : CPUFlag
    fun parse_cpu_caps = av_parse_cpu_caps(LibC::UInt*, LibC::Char*) : CPUFlag
    fun cpu_count = av_cpu_count : LibC::Int
    fun cpu_max_align = av_cpu_max_align : SizeT
  end
end
