def first_even(items)
  items.each { |items|
  if items % 2 == 0
    return items
  else 
    next
  end
}
end

puts first_even([30, 17, 77, 102])
puts first_even([3, 5, 15, 16, 23, 42])
puts first_even([5, 11, 50])
puts first_even([300, 22, 1, 55, 42])