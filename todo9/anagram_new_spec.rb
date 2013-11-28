require './anagram'

describe Anagram, 'match' do
  it "should detect no match" do
    Anagram.new('orange')
  end

  it "should detect one match" do
    Anagram.new('act')
  end

  it "should detect two matches" do
    Anagram.new('')
  end

end
