require "./rational"
module AV
  lib LibAVUtil
    #   AVUTIL_TIMESTAMP_H =
    TS_MAX_STRING_SIZE = 32
    #   av_ts2str =  ts) av_ts_make_string(( char[ AV_TS_MAX_STRING_SIZE]){0}, ts
    #   av_ts2timestr =  ts, tb) av_ts_make_time_string(( char[ AV_TS_MAX_STRING_SIZE]){0}, ts, tb
    fun ts_make_string = av_ts_make_string(LibC::Char*, Int64) : LibC::Char*
    fun ts_make_time_string = av_ts_make_time_string(LibC::Char*, Int64, LibAVUtil::Rational*) : LibC::Char*
  end
end
