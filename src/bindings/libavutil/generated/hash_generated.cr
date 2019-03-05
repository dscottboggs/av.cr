module AV
  lib LibAVUtil
    #   AVUTIL_HASH_H =
    AV_HASH_MAX_SIZE = 64
    type AVHashContext = Void
    fun av_hash_alloc(AVHashContext**, LibC::Char*) : LibC::Int
    fun av_hash_names(LibC::Int) : LibC::Char*
    fun av_hash_get_name(AVHashContext*) : LibC::Char*
    fun av_hash_get_size(AVHashContext*) : LibC::Int
    fun av_hash_init(AVHashContext*) : Void
    fun av_hash_update(AVHashContext*, Uint8T*, LibC::Int) : Void
    fun av_hash_final(AVHashContext*, UInt8*) : Void
    fun av_hash_final_bin(AVHashContext*, UInt8*, LibC::Int) : Void
    fun av_hash_final_hex(AVHashContext*, UInt8*, LibC::Int) : Void
    fun av_hash_final_b64(AVHashContext*, UInt8*, LibC::Int) : Void
    fun av_hash_freep(AVHashContext**) : Void
  end
end
