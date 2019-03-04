module AV
  lib LibAVUtil
    # NOTE: this file contains macros which have not been translated, and may be
    # incomplete!

    #   FF_PAD_STRUCTURE = ( name, size,...) struct ff_pad_helper_## name{ __VA_ARGS__}; typedef struct name{ __VA_ARGS__ char reserved_padding[ size- sizeof( struct ff_pad_helper_## name)];\
    # } name;
    # AV_BPRINT_SIZE_UNLIMITED = ( unsigned)-1
    AV_BPRINT_SIZE_AUTOMATIC  =   1
    AV_BPRINT_SIZE_COUNT_ONLY = 0o0

    struct FfPadHelperAVBPrint
      str : LibC::Char*
      len : LibC::UInt
      size : LibC::UInt
      size_max : LibC::UInt
      reserved_internal_buffer : StaticArray(LibC::Char, 1)
    end

    struct BPrint
      str : LibC::Char*
      len : LibC::UInt
      size : LibC::UInt
      size_max : LibC::UInt
      reserved_internal_buffer : StaticArray(LibC::Char, 1)
      reserved_padding : StaticArray(LibC::Char, 1000)
    end

    fun av_bprint_init(BPrint*, LibC::UInt, LibC::UInt) : Void
    fun av_bprint_init_for_buffer(BPrint*, LibC::Char*, LibC::UInt) : Void
    fun av_bprintf(BPrint*, LibC::Char*) : Void
    fun av_vbprintf(BPrint*, LibC::Char*, VaList) : Void
    fun av_bprint_chars(BPrint*, LibC::Char, LibC::UInt) : Void
    fun av_bprint_append_data(BPrint*, LibC::Char*, LibC::UInt) : Void
    type Tm = Void
    fun av_bprint_strftime(BPrint*, LibC::Char*, Tm*) : Void
    fun av_bprint_get_buffer(BPrint*, LibC::UInt, LibC::Char**, LibC::UInt*) : Void
    fun av_bprint_clear(BPrint*) : Void
    fun av_bprint_is_complete(BPrint*) : LibC::Int
    fun av_bprint_finalize(BPrint*, LibC::Char**) : LibC::Int
    fun av_bprint_escape(BPrint*, LibC::Char*, LibC::Char*, EscapeMode, LibC::Int) : Void
  end
end
