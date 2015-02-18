require "../src/libuv.cr"

loop = Pointer(Void).malloc(1)
UV.loop_init(loop)
UV.run(loop, UV::UvRunMode::UV_RUN_DEFAULT)
puts "Now quitting."
UV.loop_close(loop)
