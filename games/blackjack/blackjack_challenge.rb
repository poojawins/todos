
class Blackjack
  
  attr_accessor :cards, :counter

  def initialize
    @cards = [ (1+rand(11)), (1+rand(11)) ]
    @counter = cards[0] + cards[1]
  end

  def greeting
    puts "Welcome to blackjack! Wanna play?"
    to_play = gets.chomp.downcase
      if to_play == "yes"
        puts "These are your two cards: #{cards}"
        puts "Your total is #{counter}"
        did_win
      else
        puts "No problem. Come back when you're ready to play."
        exit
      end
  end

  def hit
    if counter < 21
      puts "want to hit?"
      player_choice = gets.chomp.downcase
      if player_choice == "yes" 
        deal_card 
      else
        puts "Sorry, you lost."
        exit
      end
    end
  end

 def deal_card
    new_card =  (1 + rand(11))
    @counter = counter + new_card
    puts "Your new total is #{counter}"
    did_win
  end

  def did_win
    if counter == 21
      puts "You've won!"
    elsif counter > 21
      puts "Sorry, you're over. You lost!"
      exit
    else
      hit
    end
  end

end

my_game = Blackjack.new
start = my_game.greeting