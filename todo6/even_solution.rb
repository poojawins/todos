def first_even(items)
  items.each { |items|
  if items % 2 == 0
    return items
  else 
    next
  end
}
end

