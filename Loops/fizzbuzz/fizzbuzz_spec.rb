require_relative 'fizzbuzz'

describe "#fizzbuzz" do
	it "should return fizzbuzz when number mod 15 = 0" do
		expect(fizzbuzz(75)).to eq("fizzbuzz")
	end
  it  "should return fizz when number mod 3 == 0" do
    expect(fizzbuzz(9)).to eq("fizz")
  end

	it  "should return buzz when number mod 5 == 0" do
		expect(fizzbuzz(10)).to eq("buzz")
	end
  it  "should return the number when no other conditions fit" do
    expect(fizzbuzz(4)).to eq(4)
  end

end
