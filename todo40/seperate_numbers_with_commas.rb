#Separate numbers with a comma each three digits.

def separate_with_comma(n)
  n.to_s.reverse.gsub(/(\d{3})(\d+)(\d*)/, $1",").reverse
end

puts separate_with_comma(1)
puts separate_with_comma(1000)
puts separate_with_comma(10000)

