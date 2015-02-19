#Separate numbers with a comma each three digits.

def separate_with_comma(n)
  n = n.to_s.reverse.split(//)
  new_string = ""
  n.each_with_index do |num, i|
    if i % 3 == 0 && i != 0
      new_string = new_string + ",#{num}"
    else
      new_string += num
    end
    i += 1
  end
  puts new_string.reverse
end

separate_with_comma(1) # 1
separate_with_comma(1000) # 1,000
separate_with_comma(1111) # 1,111
separate_with_comma(10000) # 10,000
separate_with_comma(1000000) # 1,000,000
