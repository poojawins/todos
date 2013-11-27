# one instance variable: line.
# we should be able to call "take a number" that takes a customer's name, appends their number to their name and adds them to the line.
 
# The line could look like this: ["1. Ashley", "2. Steve", "3. Blake"] 
 
# we should be able to call a method called "now_serving" that removes the customer who is first in line and returns their name.
 
# Write a test and then write the class.

require './deli_counter'


describe Deli, "#take_a_number" do
  it "should return customer's ticket number" do 
    Deli.new.take_a_number("Pooja").should eq(1)
  end
end

describe Deli, "#now_serving" do 
  it "should remove the first customer in line and return their name" do 
    corner_deli = Deli.new
    corner_deli.take_a_number("Rob").should eq(1)
    corner_deli.now_serving.should eq("1. Rob")
  end
  it "should work with more then one customer" do
    rob_deli = Deli.new
    rob_deli.take_a_number("Rob").should eq(1)
    rob_deli.take_a_number("Pooja").should eq(2)
    rob_deli.take_a_number("John").should eq(3)
    
    rob_deli.now_serving.should eq("1. Rob")
    rob_deli.now_serving.should eq("2. Pooja")
    rob_deli.now_serving.should eq("3. John")
  end
end