# Lets make an object that behaves like a hash today!

# I would like to be able to find keys in the hash regardless of whether they are strings or symbols.

# For example:

# obj = {:blake => "the best"}
# obj["blake"] #=> "the best"

# I would like to be able to set values in our fake hash.
# I would like to be able to find all values that have keys beginning with the letter a.
# I would like to be able to get all the keys in the hash in a descending alphabetized array.

class FakeHashWrapper

  attr_accessor :elements

  def initialize
    @elements = elements
  end

  def set_values(blah, val)
    @hash[blah] = val
  end

end

fake = FakeHashWrapper.new(hash ={ :blake => "the best", :ashley => "awesome", :armando=> "angry" })
