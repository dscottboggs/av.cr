module AV
  lib LibAVUtil
    fun file_map = av_file_map(LibC::Char*, UInt8**, LibC::SizeT*, LibC::Int, Void*) : LibC::Int
    fun file_unmap = av_file_unmap(UInt8*, LibC::SizeT) : Void
    fun tempfile = av_tempfile(LibC::Char*, LibC::Char**, LibC::Int, Void*) : LibC::Int
  end
end
