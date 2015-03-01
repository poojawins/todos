# Implement your own version of Ruby Array's transpose method

class Array
  def my_transpose
    return self if self.empty?
    transpose = []
    # i = 0
    self.each_with_index do |x, i|
      
      i += 1
    end
    puts transpose
  end
end

[1, 2, 3].my_transpose # error no implicit conversion of Fixnum into Array
[[1, 2, 3], [:a, :b, :c]].my_transpose # [[1, :a], [2, :b], [3, c]]
[[1,2], [3,4], [5,6]].my_transpose # [[1, 3, 5], [2, 4, 6]]
[].my_transpose #[]

# class Array
#   def reverse_array
#     return self if self.empty?
#     reverse = []
#     self.each_with_index do |x, i|
#       reverse[self.length - i] = x 
#       i += 1
#     end
#     puts reverse
#   end
# end
