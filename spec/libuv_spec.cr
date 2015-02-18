require "../src/libuv_simple.cr"
require "spec"

describe "Loop" do
  it "initializes" do
    loop = Pointer(UV::UvLoopT).malloc(1)
    UV.loop_init(loop).should eq 0
    UV.loop_close(loop).should eq 0
  end

  it "runs" do
    loop = Pointer(UV::UvLoopT).malloc(1)
    UV.loop_init(loop).should eq 0
    UV.run(loop, UV::UvRunMode::UV_RUN_DEFAULT).should eq 0
    UV.loop_close(loop).should eq 0
  end
end
