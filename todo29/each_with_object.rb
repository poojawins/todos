# Instructions:
# Each with object works much like inject. Use each_with_object to return an array containing one reversed string for each string that has an even number of characters.

def even_sum(arr)
  arr.each_with_object([]) {|a, array|  array << a.reverse if a.length % 2 == 0 }
end

even_sum(["cat", "dog", "bird", "fish"]) #=> ["drib", "hsif"]

