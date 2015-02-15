require "../src/libuv.cr"

loop = Pointer(UV::UvLoopT).malloc(1)
UV.uv_loop_init(loop)
UV.uv_run(loop, UV::UvRunMode::UV_RUN_DEFAULT)
puts "Now quitting."
UV.uv_loop_close(loop)
