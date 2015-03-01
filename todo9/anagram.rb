class Anagram

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(list)
    matched = []
    
    our_word = word.split(%r{\s*}).sort

    list.each do |word|
      matched << word if word.split(%r{\s*}).sort == our_word
    end
    matched
  end

end

my_anagram = Anagram.new("act")
puts my_anagram.match(%w(cat tac sum above action))
