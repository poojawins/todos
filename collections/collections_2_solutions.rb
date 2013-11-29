#1
def r_elements(tools)
  count = 0
  tools.each do |word| 
    word[0] == "r" ? count += 1 : next
  end
  count
    if count == tools.length
      true
    else
      false
    end
end

r_elements(["ruby", "rspec", "rails"])

#2
def new_array(captain_planet)
  a_array = []
  captain_planet.each do |element| 
    if element.include? "a"
      a_array << element 
    end
  end
  a_array
end

new_array(["earth", "fire", "wind", "water", "heart"])

#3
def first_in_array(stuff)
  stuff.each do |element|
    if element.to_s.start_with?("wa")
      puts element
      break
    end
  end  
end

first_in_array(["candy", :pepper, "wall", :ball, "wacky"])

#4
def all_in_array(stuff)
  stuff.each do |element|
    if element.to_s.start_with?("wa")
      puts element
    end
  end  
end

all_in_array(["candy", :pepper, "wall", :ball, "wacky"])

#5
def strings_in_array(stuff)
  stuff.each do |element|
    if element.class == String
      next
    else
      stuff.delete(element)
    end
  end
end

strings_in_array(["candy", :pepper, "wall", :ball, "wacky"])

#6
def change_third_char(mixed_array)
  mixed_array.each do |word|
    if word.class == String
      word[2] = "r"
      word
    else
      next
    end
  end
end

change_third_char(["candy", :pepper, "wall", :ball, "wacky"])

#7
def word_count(split_string)
  word_hash = {}
  split_string.split.each do |word|
    word_hash[word] = split_string.split.count(word)
  end
  word_hash
end

word_count("the flatiron school is better than general assembly")

#8
def hash_count(array_hash)
  new_hash = {}
  array_hash.each do |person| 
    name = person[:name]
    if new_hash.has_key? name
      new_hash[name] += 1
    else
      new_hash[name] = 1
    end
  end
  result_array = []
  new_hash.each do |person, value|
    result_array << {:name => person, :count => value}
  end
  result_array
end

hash_count([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}])

# def hash_count(array_hash)
#   idx = 0
#   while idx < array_hash.length
#     item = array_hash[idx]
#     found = false
#     array_hash.each_with_index do |item2, idx2|
#       if idx2 < idx and item2[:name] == item[:name]
#         item2[:count] += 1
#         found = true
#       end
#     end
#     if found
#       array_hash.delete(item)
#     else
#       item[:count] = 1;
#       idx += 1
#     end
#   end
#   puts array_hash
# end

# hash_count([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}])

#9
def merge_dem_arrays(array1, array2)
  merged = []
  array2.each do |hash2|
    hash2.each do |name, info|
      array1.each do |hash1|
        if hash1[:first_name] == name
          info[:first_name] = name
          merged << info
        end
      end
    end
  end
  puts merged
end

name_array = 
[
  {:first_name => "blake"},
  {:first_name => "ashley"}
]

info_array = 
[
  {
    "blake" => 
    {:awesomeness => 10,
    :height => "74",
    :last_name => "johnson"},

    "ashley" => 
    {:awesomeness => 9,
    :height => 60,
    :last_name => "dubs"}
  }
]

merge_dem_arrays(name_array, info_array)

# returns:

# [
  #{:first_name => "blake",
#  :awesomeness => 10,
#  :height => "74",
#  :last_name => "johnson"},
#  
  #{:first_name => "ashley",
#   :awesomeness => 9,
#   :height => 60,
#   :last_name => "dubs"}
# ]


#returns:
# [
#        {
#          :first_name => "blake",
#         :awesomeness => 10,
#              :height => "74",
#           :last_name => "johnson"
#     },
#        {
#          :first_name => "ashley",
#         :awesomeness => 9,
#              :height => 60,
#           :last_name => "dubs"
#     }
# ]

#10
def cool_array(thing)
  answer_array = []
  thing.each do |person|
    if person[:temperature] == "cool"
      answer_array << person
    end
  end
  answer_array
end
cool_array([
        {
               :name => "ashley",
        :temperature => "sort of cool"
    },
        {
               :name => "blake",
        :temperature => "cool"
    }
])

#11
dev_schools = 
{
  "flatiron school bk" => {
    :location => "NYC",
    :price => "free"
  },
  "dev boot camp" => {
    :location => "SF",
    :price => "a million dollars"
  },
  "dev boot camp chicago" => {
    :location => "Chicago",
    :price => "half a million dollars"
  },
  "general assembly" => {
    :location => "NYC",
    :price => "too much"
  },
  "some school in SF" => {
    :location => "SF",
    :price => "your soul"
  }
}

def by_location(some_hash)
  location_hash = {}
  some_hash.each do |school_name, school_info|
    location = school_info[:location]
    price = school_info[:price]
    if not location_hash.has_key?(location)
      location_hash[location] = []
    end
    location_hash[location] << {:name => school_name, :price => price}
  end

  puts location_hash

end

by_location(dev_schools)

#returns:
# loc_hash =
# { 
#   "NYC" => [
#   {:school => "flatiron school bk",
#   :price => "free"},
#   {:school => "general assembly",
#   :price => "too much"}
#   ],

#   "SF" => [
#   {:school => "dev boot camp",
#   :price => "a million dollars"},
#   {:school => "some school in SF",
#   :price => "your soul"},
#   ],

#   "Chicago" => [
#   {:school => "dev boot camp chicago",
#   :price => "half a million dollars"}
#   ],
# }

