module AV
  lib LibAVUtil
    type Cast5 = Void
    fun cast5_alloc = av_cast5_alloc : Cast5*
    fun cast5_init = av_cast5_init(Cast5*, UInt8*, LibC::Int) : LibC::Int
    fun cast5_crypt = av_cast5_crypt(Cast5*, UInt8*, UInt8*, LibC::Int, LibC::Int) : Void
    fun cast5_crypt2 = av_cast5_crypt2(Cast5*, UInt8*, UInt8*, LibC::Int, UInt8*, LibC::Int) : Void
  end
end
