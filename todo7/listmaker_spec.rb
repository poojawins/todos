require_relative './listmaker'

describe "#make_list" do
  it "should take an array and return as an array of strings in numbered list format" do
  expect(make_list(["ich", "ni", "san"])).to eq (["1. ich", "2. ni", "3. san"])
  end
end

#to use this with class
#
#describe Array,"#make_list" do
#  it "should take an array and return as an array of strings in numbered list format" do
#    expect(["ich", "ni", "san"].make_list()).to eq (["1. ich", "2. ni", "3. san"])
#  end
#end
