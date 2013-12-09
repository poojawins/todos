require './count_elements'


describe "#count(array)" do
  it "should return a hash with the number of times each element in an array appears" do 
    expect(count(['cat', 'dog', 'fish', 'fish'])).to eq({ 'cat' => 1, 'dog' => 1, 'fish' => 2 })
  end
end

