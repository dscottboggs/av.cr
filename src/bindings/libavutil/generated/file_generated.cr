module AV
  lib LibAVUtil
    #   AVUTIL_FILE_H =
    fun av_file_map(LibC::Char*, UInt8**, SizeT*, LibC::Int, Void*) : LibC::Int
    fun av_file_unmap(UInt8*, SizeT) : Void
    fun av_tempfile(LibC::Char*, LibC::Char**, LibC::Int, Void*) : LibC::Int
  end
end
