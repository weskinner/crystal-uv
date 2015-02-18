require "../src/libuv.cr"

# int main() {
#     uv_loop_t *loop = malloc(sizeof(uv_loop_t));
#     uv_loop_init(loop);
# 
#     printf("Now quitting.\n");
#     uv_run(loop, UV_RUN_DEFAULT);
# 
#     uv_loop_close(loop);
#     free(loop);
#     return 0;
# }

loop = Pointer(Void).malloc(1)
UV.loop_init(loop)
UV.run(loop, UV::UvRunMode::UV_RUN_DEFAULT)
puts "Now quitting."
UV.loop_close(loop)
