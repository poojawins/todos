require './anagram'

describe Anagram, 'match' do
  it "should detect no match" do
    check = Anagram.new('orange')
    check.match(%w(tan animal)).should eq([])
  end

  it "should detect one match" do
    check = Anagram.new('rat')
    check.match(%w(once tar only)).should eq(['tar'])
  end

  it "should detect two matches" do
    check = Anagram.new('act')
    check.match(%w(tac cat dog wolf)).should eq(['tac', 'cat'])
  end
end
