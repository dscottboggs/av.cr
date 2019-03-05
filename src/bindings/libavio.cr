require "./libavutil/dict"
require "./libavutil/log"

module AV
  lib LibAVIO
    @[Flags]
    enum IOSeekable
      NORMAL = 1
      TIME
    end
    struct IOInterruptCB
      callback : Void* -> LibC::Int
      opaque : Void*
    end

    enum IODataMarkerType
      HEADER, SYNC_POINT, BOUNDARY_POINT, UNKNOWN, TRAILER
    end

    struct IOContext
      av_class : LibAVUtil::Class*
      buffer : LibC::Char*
      buffer_size : LibC::Int
      buf_ptr : LibC::Char*
      buf_end : LibC::Char*
      opaque : Void*
      read_packet : AllocContextReadPacketFun
      write_packet : AllocContextWritePacketFun
      seek : AllocContextSeekFun
      pos : Int64
      must_flush : LibC::Int
      eof_reached : LibC::Int
      write_flag : LibC::Int
      max_packet_size : LibC::Int
      checksum : LibC::ULong
      checksum_ptr : LibC::Char*
      update_checksum : (LibC::ULong, UInt8*, LibC::UInt) -> LibC::ULong
      error : LibC::Int
      read_pause : (Void*, LibC::Int) -> Int64
      read_seek : (Void*, LibC::Int, Int64, LibC::Int) -> Int64
      seekable : LibC::Int
      write_data_type : (Void*, UInt8*, LibC::Int, IODataMarkerType, Int64) -> LibC::Int
      ignore_boundary_point : LibC::Int
      current_type : IODataMarkerType
      last_time : Int64
      written : Int64
    end

    type AllocContextReadPacketFun = (Void*, UInt8*, LibC::Int) -> LibC::Int
    type AllocContextWritePacketFun = AllocContextReadPacketFun
    type AllocContextSeekFun = (Void*, Int64, LibC::Int) -> Int64

    fun check = avio_check(LibC::Char*, LibC::Int) : LibC::Int
    fun alloc_context = avio_aloc_context(LibC::Char*,
                                          LibC::Int,
                                          LibC::Int,
                                          Void*,
                                          AllocContextReadPacketFun*,
                                          AllocContextWritePacketFun*,
                                          AllocContextSeekFun*)
    fun context_free = avio_context_free(IOContext**) : Void
    fun w8 = avio_w8(IOContext*, LibC::Int) : Void
    fun write = avio_write(IOContext*, LibC::Char*, LibC::Int) : Void
    fun wl64 = avio_wl64(IOContext*, UInt64) : Void
    fun wb64 = avio_wb64(IOContext*, UInt64) : Void
    fun wl32 = avio_wl32(IOContext*, LibC::UInt) : Void
    fun wb32 = avio_wb32(IOContext*, LibC::UInt) : Void
    fun wl24 = avio_wl24(IOContext*, LibC::UInt) : Void
    fun wb24 = avio_wb24(IOContext*, LibC::UInt) : Void
    fun wl16 = avio_wl16(IOContext*, LibC::UInt) : Void
    fun wb16 = avio_wb16(IOContext*, LibC::UInt) : Void
    fun put_str = avio_put_str(IOContext*, LibC::Char*) : LibC::Int
    fun put_str16le = avio_put_str16le(IOContext*, LibC::Char*) : LibC::Int
    fun put_str16be = avio_put_str16be(IOContext*, LibC::Char*) : LibC::Int
    fun write_marker = avio_write_marker(IOContext*, Int64, IODataMarkerType) : Void

    SEEK_SIZE = 0x10000
    SEEK_FORCE = 0x20000

    fun seek = avio_seek(IOContext*, Int64, LibC::Int) : Int64

    # macro skip(s : IOContext*, offset : Int64) : Int64
    #   seek s, offset, LibC::SEEK_CUR
    # end
    #
    # macro tell(s : IOContext*) : Int64
    #   seek s, 0, LibC::SEEK_CUR
    # end

    fun size = avio_size(IOContext*) : Int64
    # fun printf(IOContext*, LibC::Char*, *)
    fun flush = avio_flush(IOContext*) : Void
    fun read = avio_read(IOContext*, LibC::Char*, LibC::Int) : LibC::Int
    fun read_partial = avio_read_partial(IOContext*, LibC::Char*, LibC::Int) : LibC::Int
    fun r8 = avio_r8  (IOContext*) : LibC::Int
    fun rl16 = avio_rl16(IOContext*) : LibC::UInt
    fun rl24 = avio_rl24(IOContext*) : LibC::UInt
    fun rl32 = avio_rl32(IOContext*) : LibC::UInt
    fun rl64 = avio_rl64(IOContext*) : UInt64
    fun rb16 = avio_rb16(IOContext*) : LibC::UInt
    fun rb24 = avio_rb24(IOContext*) : LibC::UInt
    fun rb32 = avio_rb32(IOContext*) : LibC::UInt
    fun rb64 = avio_rb64(IOContext*) : UInt64
    fun get_str = avio_get_str(IOContext*, LibC::Int, LibC::Char*, LibC::Int) : LibC::Int
    fun get_str16le = avio_get_str16le(IOContext*, LibC::Int, LibC::Char*, LibC::Int) : LibC::Int
    fun get_str16be = avio_get_str16be(IOContext*, LibC::Int, LibC::Char*, LibC::Int) : LibC::Int
    @[Flags]
    enum IOFlag
      READ = 1
      WRITE
      READ_WRITE = READ | WRITE
      NONBLOCK = 8
    end

    fun open = avio_open(IOContext**, LibC::Char*, LibC::Int) : LibC::Int
    fun open2 = avio_open2(IOContext**, LibC::Char*, LibC::Int, IOInterruptCB*, LibAVUtil::Dictionary**) : LibC::Int
    fun close = avio_close(IOContext*) : LibC::Int
    fun closep = avio_closep(IOContext**) : LibC::Int
    fun open_dyn_buf = avio_open_dyn_buf(IOContext**) : LibC::Int
    fun close_dyn_buf = avio_close_dyn_buf(IOContext*, UInt8**) : LibC::Int

    fun enum_protocols = avio_enum_protocols(Void**, LibC::Int) : LibC::Char*
    fun pause = avio_pause(IOContext*, LibC::Int) : LibC::Int
    fun seek_time = avio_seek_time(IOContext*, LibC::Int, Int64, LibC::Int) : Int64
  end
end
