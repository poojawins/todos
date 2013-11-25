# Create a test for a method`make_list` that takes an array and returns that same array but
# as an array of strings in a numbered list.

# Run this test by typing `rspec listmaker_spec.rb` in your terminal.

# Then, create a method on array called `make_list` that iterates over the array it is
# called on and appends a number, a period, and a space to each element.

# e.g make_list(["ich", "ni", "san"]) #=> ["1. ich", "2. ni", "3. san"]

def make_list(array)
  i = 0
  array.each do |element|
    array[i] = (i + 1).to_s + ". " + element
    i += 1
  end
end

#if you want to stop keeping track of index
#def make_list(array)
#  y = []
#  array.each_with_index do |x, index|
#    y << "#{index + 1}, #{x}"
#  end
#  y 
#end

#using map method
#def make_list(array)
#  array.map.with_index { |item, index| "#{index + 1}. #{item}" } 
#end

#Creating class
#class Array
#  def make_list
#    self.map.with_index { |item, index| "#{index + 1}. #{item}" }
#  end
#end
