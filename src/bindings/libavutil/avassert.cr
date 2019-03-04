module AV
  lib LibAVUtil
    # NOTE: this file contains macros which have not been translated, and may be
    # incomplete!

    #   av_assert0 =  cond) do{ if(!( cond)){ av_log( NULL, AV_LOG_PANIC,"Assertion %s failed at %s:%d\n", AV_STRINGIFY( cond), __FILE__, __LINE__); abort();}\
    # } while(0
    #   av_assert1 =  cond)(( void)0
    #   av_assert2 =  cond)(( void)0
    #   av_assert2_fpu = )(( void)0
    fun av_assert0_fpu : Void
  end
end
