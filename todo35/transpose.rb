# Implement your own version of Ruby Array's transpose method

class Array
  def my_transpose
    each do |array|
      i = 0
      array.each_with_index do |x, i| 
        Array.new[i] << (array[i])
      i +=1
      end
    end 
  end
end

puts [[1, 2, 3], [:a, :b, :c]].my_transpose
# puts [[1,2], [3,4], [5,6]].my_transpose
# puts [].my_transpose