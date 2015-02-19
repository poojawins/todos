require_relative "./fakehashwrapper.rb"

describe FakeHashWrapper do
  it "should treat the fake hash the same as a hash" do
    container = {}
    fake = FakeHashWrapper.new({})
    fake.each {|elem| fake[] == }
    expect(container).to eq({})
  end

  it "should set a value for the hash's key" do
    fake = FakeHashWrapper.new
    fake[:] = ""
    expect(fake[:]).to eq("")
  end
end
