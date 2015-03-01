#Separate numbers with a comma each three digits.

def separate_with_comman(n)
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
  return new_string.reverse
end

# def separate_with_comma(n)
#   out = ""
#   while true do
#     part = n % 1000
#     n /= 1000
#     out = part.to_s + out
#     if n == 0; break; end
#     if ( part < 10 ); out = "0" + out; end
#     if ( part < 100 ); out = "0" + out; end
#     out = "," + out
#   end
#   return out
# end

# def tseparate_with_comma(n)
#   puts(n.to_s + "\t" + separate_with_comma(n) + "\t" + separate_with_comman(n))
# end

separate_with_comma(1) # 1
separate_with_comma(1000) # 1,000
separate_with_comma(1111) # 1,111
separate_with_comma(10000) # 10,000
separate_with_comma(1000000) # 1,000,000
