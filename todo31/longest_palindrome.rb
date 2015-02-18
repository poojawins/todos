# A palindrome is a string that is written the same forward as it is in reverse. 
#  Write a method to return the longest palindrome in a given string

def longest_palindrome(given_string)
  palindrome = ""
  (0...given_string.length).each do |i|
    (0...given_string.length).each do |j|
      if given_string[i, j] == given_string[i, j].reverse && given_string[i, j].length > palindrome.length
        palindrome = given_string[i, j]
      end
    end
  end
  puts palindrome

end

longest_palindrome("afbbbfjdjklgdfdhfdkjfffhhfffjkdfhdhkyejejfjkd") #=> "dhfdkjfffhhfffjkdfhd"
