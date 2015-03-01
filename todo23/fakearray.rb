# To explore the confusion around the results object we get back from queries using the mysql2 gem...

# Create an object that behaves like an array but is NOT an array. 
# Define the each, first, and indexing methods on it.

# I should get the same result if I do...

# container = []
# [1,2,3].each do |element|
#   container << element + 1
# end

# as if I use your class like so...

# fakearray = FakeArray.new
# container = []
# fakearray.each do |element|
#   container << element + 1
# end

# Note: I've intentionally omitted a step here where you'd have to somehow tell your class that were using an array of 1,2,3

class FakeArray
  attr_accessor :items

  def initialize(array)
    @fake_array = array
  end

  def each
    @fake_array.each do |item|
      yield item
    end
  end

  def first
    @fake_array[0]
  end

  def [](i)
    @fake_array[i]
  end
end
