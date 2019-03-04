module AV
  lib LibAVUtil
    struct Timeval
      tv_sec : LibC::Long
      tv_usec : LibC::Long
    end

    type Expr = Void
    type FirstParseCB = (Void*, LibC::Double) -> LibC::Double**
    type FirstParseAndEvalCB = FirstParseCB
    type SecondParseCB = (Void*, LibC::Double, LibC::Double) -> LibC::Double**
    type SecondParseAndEvalCB = SecondParseCB
    fun expr_parse_and_eval = av_expr_parse_and_eval(LibC::Double*,
                                                     LibC::Char*,
                                                     LibC::Char**,
                                                     LibC::Double*,
                                                     LibC::Char**,
                                                     FirstParseAndEvalCB,
                                                     LibC::Char**,
                                                     SecondParseAndEvalCB,
                                                     Void*,
                                                     LibC::Int,
                                                     Void*) : LibC::Int
    fun expr_parse = av_expr_parse(Expr**,
                                   LibC::Char*,
                                   LibC::Char**,
                                   LibC::Char**,
                                   FirstParseCB,
                                   LibC::Char**,
                                   SecondParseCB,
                                   LibC::Int,
                                   Void*) : LibC::Int
    fun expr_eval = av_expr_eval(Expr*, LibC::Double*, Void*) : LibC::Double
    fun expr_free = av_expr_free(Expr*) : Void
    fun strtod = av_strtod(LibC::Char*, LibC::Char**) : LibC::Double
  end
end
