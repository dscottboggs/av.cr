module AV
lib LibAVUtil
#   AVUTIL_EVAL_H = 
    timeval_defined = 1
  struct Timeval
    tv_sec : LibC::Long
    tv_usec : LibC::Long
  end

  type AVExpr = Void
  fun av_expr_parse_and_eval(LibC::Double*, LibC::Char*, LibC::Char**, LibC::Double*, LibC::Char**, (Void*, LibC::Double) -> LibC::Double**, LibC::Char**, (Void*, LibC::Double, LibC::Double) -> LibC::Double**, Void*, LibC::Int, Void*) : LibC::Int
  fun av_expr_parse(AVExpr**, LibC::Char*, LibC::Char**, LibC::Char**, (Void*, LibC::Double) -> LibC::Double**, LibC::Char**, (Void*, LibC::Double, LibC::Double) -> LibC::Double**, LibC::Int, Void*) : LibC::Int
  fun av_expr_eval(AVExpr*, LibC::Double*, Void*) : LibC::Double
  fun av_expr_free(AVExpr*) : Void
  fun av_strtod(LibC::Char*, LibC::Char**) : LibC::Double
end
end
