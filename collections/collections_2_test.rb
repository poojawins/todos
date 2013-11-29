#9 Take two arrays of hashes and merge the first names and last names into a new array of hashes where each hash has all information about itself.
# def merge_dem_arrays(array1, array2)

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

# should become

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

