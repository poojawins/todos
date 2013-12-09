require './count_elements'


describe "#count" do
  it "should return a hash with the number of times each element in an array appears" do
    test = ['cat', 'dog', 'fish', 'fish']
    expect(count(test)).to eq ({ 'cat' => 1, 'dog' => 1, 'fish' => 2 })
  end
end

