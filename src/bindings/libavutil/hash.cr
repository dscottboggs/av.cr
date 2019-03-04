module AV
  lib LibAVUtil
    AV_HASH_MAX_SIZE = 64
    type HashContext = Void
    fun hash_alloc = av_hash_alloc(HashContext**, LibC::Char*) : LibC::Int
    fun hash_names = av_hash_names(LibC::Int) : LibC::Char*
    fun hash_get_name = av_hash_get_name(HashContext*) : LibC::Char*
    fun hash_get_size = av_hash_get_size(HashContext*) : LibC::Int
    fun hash_init = av_hash_init(HashContext*) : Void
    fun hash_update = av_hash_update(HashContext*, Uint8T*, LibC::Int) : Void
    fun hash_final = av_hash_final(HashContext*, UInt8*) : Void
    fun hash_final_bin = av_hash_final_bin(HashContext*, UInt8*, LibC::Int) : Void
    fun hash_final_hex = av_hash_final_hex(HashContext*, UInt8*, LibC::Int) : Void
    fun hash_final_b64 = av_hash_final_b64(HashContext*, UInt8*, LibC::Int) : Void
    fun hash_freep = av_hash_freep(HashContext**) : Void
  end
end
