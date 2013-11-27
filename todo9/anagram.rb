class Anagram

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(list)
    # matched = []
    # list.each do |check_word|
    # into characters
    #   if check_word characters array == @word characters array
    #     matched << checked_word
    #   end
  end


end

my_word = "sup"
my_list = %w(ups list above)

my_anagram = Anagram.new(my_word)
puts my_anagram.match(my_list)

