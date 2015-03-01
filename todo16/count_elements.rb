# Count elements in an Array by returning a hash with keys of the elements and values of the amount of times they occur.

test = ['cat', 'dog', 'fish', 'fish']

def count(array)
  count_hash = {}
  array.each do |element|
    if count_hash[element] == nil
      count_hash[element] = 1
    else
      count_hash[element] += 1
    end
  end
  count_hash
end

count(test) #=> { 'cat' => 1, 'dog' => 1, 'fish' => 2 }
