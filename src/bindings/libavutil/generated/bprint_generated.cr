module AV
lib LibAVUtil
#   AVUTIL_BPRINT_H = 
#   FF_PAD_STRUCTURE = ( name, size,...) struct ff_pad_helper_## name{ __VA_ARGS__}; typedef struct name{ __VA_ARGS__ char reserved_padding[ size- sizeof( struct ff_pad_helper_## name)];\
} name;
    AV_BPRINT_SIZE_UNLIMITED = ( unsigned)-1
    AV_BPRINT_SIZE_AUTOMATIC = 1
    AV_BPRINT_SIZE_COUNT_ONLY = 0o0
  struct FfPadHelperAVBPrint
    str : LibC::Char*
    len : LibC::UInt
    size : LibC::UInt
    size_max : LibC::UInt
    reserved_internal_buffer : StaticArray(LibC::Char, 1)
  end

  struct AVBPrint
    str : LibC::Char*
    len : LibC::UInt
    size : LibC::UInt
    size_max : LibC::UInt
    reserved_internal_buffer : StaticArray(LibC::Char, 1)
    reserved_padding : StaticArray(LibC::Char, 1000)
  end

  fun av_bprint_init(AVBPrint*, LibC::UInt, LibC::UInt) : Void
  fun av_bprint_init_for_buffer(AVBPrint*, LibC::Char*, LibC::UInt) : Void
  fun av_bprintf(AVBPrint*, LibC::Char*) : Void
  fun av_vbprintf(AVBPrint*, LibC::Char*, VaList) : Void
  fun av_bprint_chars(AVBPrint*, LibC::Char, LibC::UInt) : Void
  fun av_bprint_append_data(AVBPrint*, LibC::Char*, LibC::UInt) : Void
  type Tm = Void
  fun av_bprint_strftime(AVBPrint*, LibC::Char*, Tm*) : Void
  fun av_bprint_get_buffer(AVBPrint*, LibC::UInt, LibC::Char**, LibC::UInt*) : Void
  fun av_bprint_clear(AVBPrint*) : Void
  fun av_bprint_is_complete(AVBPrint*) : LibC::Int
  fun av_bprint_finalize(AVBPrint*, LibC::Char**) : LibC::Int
  fun av_bprint_escape(AVBPrint*, LibC::Char*, LibC::Char*, AVEscapeMode, LibC::Int) : Void
end
end
