@[Link("uv")]
lib UV
  enum UvRunMode
    UV_RUN_DEFAULT = 0
    UV_RUN_ONCE
    UV_RUN_NOWAIT
  end

  struct Handle
    data : Void*
  end

  fun loop_init = uv_loop_init(loop : Void*) : Int32
  fun loop_close = uv_loop_close(loop : Void*) : Int32
  fun run = uv_run(loop : Void*, mode : UvRunMode) : Int32
  fun default_loop = uv_default_loop() : Void*
  fun idle_init = uv_idle_init(loop : Void*, idler : Handle*) : Int32
  fun idle_start = uv_idle_start(idler : Handle*, callback : Handle* -> ) : Int32
  fun idle_stop = uv_idle_stop(idler : Handle*) : Int32
end
