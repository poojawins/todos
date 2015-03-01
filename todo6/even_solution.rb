def first_even(items)
  items.each { |item|
  if item % 2 == 0
    return item
  else 
    next
  end
}
end
