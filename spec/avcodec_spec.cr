require "./spec_helper"

describe Avcodec do
  # TODO: Write tests

  it "compiles" do
    puts AV::LibAVCodec.avcodec_version
    true.should eq(true)
  end
end
