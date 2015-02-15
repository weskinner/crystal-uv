require "../src/libuv.cr"
require "spec"

describe "Loop" do
  it "initializes" do
    loop = Pointer(UV::UvLoopT).malloc(1)
    UV.uv_loop_init(loop).should eq 0
    UV.uv_loop_close(loop).should eq 0
  end
end
