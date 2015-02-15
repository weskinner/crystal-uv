@[Link("uv")]
lib UV
  struct UvLoopT
    data : Void*
  end

  enum UvRunMode
    UV_RUN_DEFAULT = 0
    UV_RUN_ONCE
    UV_RUN_NOWAIT
  end

  fun loop_init = uv_loop_init(loop : UvLoopT*) : Int32
  fun loop_close = uv_loop_close(loop : UvLoopT*) : Int32
  fun run = uv_run(loop : UvLoopT*, mode : UvRunMode) : Int32
end
