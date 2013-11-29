#Collections Practice

my_array = ["blake", "ashley", "scott"]

#1. sort the following array in ascending order
  #["blake", "ashley", "scott"]
my_array.sort

#2. sort the following array in descending order
  #["blake", "ashley", "scott"]
my_array.sort.reverse

#3. put the following array in reverse order
  #["blake", "ashley", "scott"]
my_array.reverse

#4. grab the second element in the array
  #["blake", "ashley", "scott"]
my_array[1]

#5. print each element of the array to the console
  #["blake", "ashley", "scott"]
my_array.each { |name| puts name }

#6. create a new array in the following order
  #["blake", "ashley", "scott"] 
  #should transform into
  #["blake", "scott", "ashley"]
new_array =  my_array[0], my_array[2], my_array[1]

#7. using the following array create a hash where the elements in the array are the keys and the values of the hash are those elements with the 3rd character changed to a dollar sign.
  #["blake", "ashley", "scott"]
#name_hash = my_array.each{ |key| puts key, key[2] = "$"}
hash = {}
my_array.each do |name|
  hash[name] = { |name| puts name[0..1] + "$" + name[3..(name.length)] }
end

#8. create a hash with two keys, "greater_than_10", "less_than_10" and their values will be an array of any numbers greater than 10 or less than 10 in the following array
num_array = [100, 1000, 5, 2, 3, 15, 1, 1, 100]

greater_than_10 = []
less_than_10 = []

num_array.each { |x| 
  if x > 10
    greater_than_10 << x
  elsif x < 10
    less_than_10 << x
  end
}

num_hash = {
  :greater_than_10 => greater_than_10 ,
  :less_than_10 => less_than_10
}

#9. find all the winners and put them in an array
who_wins = {:blake => "winner", :ashley => "loser", :caroline => "loser", :carlos => "winner"}
winners = []
who_wins.each{ |name, status| status == "winner" ? winners << name : next }

#10. add the following arrays
  #[1,2,3] and [5,9,4]
[1,2,3].concat([5, 9, 4])

#11. find all words that begin with "a" in the following array
some_words = ["apple", "orange", "pear", "avis", "arlo", "ascot" ]
a_words = []
some_words.each{ |word| word[0] == "a" ? a_words << word : next }

#12. sum all the numbers in the following array
sum_array = [11,4,7,8,9,100,134].inject(:+)

#13. Add an "s" to each word in the array except for the 2nd element in the array?
things_array = ["hand","feet", "knee", "table"]
things_array.each do |word|
  word += "s" unless index == 1
end


#CHALLENGES

#14 word count

#Count how many times each word appears in my story.
#Tip: You'll need to use Hash.new(0) to do this rather than creating a hash using literal syntax like {}.

story = "The summer of tenth grade was the best summer of my life.  I went to the beach everyday and we had amazing weather.  The weather didnt really vary much and was always pretty hot although sometimes at night it would rain.  I didnt mind the rain because it would cool everything down and allow us to sleep peacefully.  Its amazing how much the weather affects your mood.  Who would have thought that I could write a whole essay just about the weather in tenth grade.  Its kind of amazing right?  Youd think for such an interesting person I might have more to say but you would be wrong"

story = story.split!

story.map! do |word|
  word.downcase.gsub(/[.,!?]/, "")
end

count_hash = Hash.new(0)
story.each do |word|
  count_hash[word] +=1
end

puts count_hash

#15 song library

#convert the following array of song titles to a nested hash of the form
#{:artist1 => :songs => [], :artist2 => :songs => []}

song_array = ["dave matthews band - tripping billies", "dave matthews band - #41", "calvin harris - some techno song", "avicii - some other dance song", "oasis - wonderwall", "oasis - champagne supernova"]

song_hash = {}
song_array.each do |band_and_song|
  artist = band_and_song.split(" - ")[0]
  song = band_and_song.split(" - ")[1]
  if not song_hash.has_key?(artist)
    song_hash[artist] = []
  end
  song_hash[artist] << song
end

puts song_hash

