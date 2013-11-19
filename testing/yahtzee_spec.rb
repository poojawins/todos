require_relative './yahtzee'


roll_test_array = roll_dice

describe "#roll_dice" do 
  it "should return an array object" do
    expect(roll_dice.class).to eq(Array)
  end
  it "should return an array with length 5" do
    expect(roll_dice.length).to eq(5)
  end
  it "should return elements between 1 and 6" do
    roll_dice.each do |dice_number|
      expect(dice_number).to be > 0
      expect(dice_number).to be < 7
    end
  end
end

describe "#win?" do 
  it "should return true if all same " do
    expect(win?([5, 5, 5, 5, 5])).to eq(true)
  end
  it "should return false if all same " do
    expect(win?([1, 2, 3, 4, 5])).to eq(false)
  end
end