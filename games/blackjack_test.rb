def deal_card
  1 + rand(11)
end

def player_total
  points = []
  points << deal_card
  points << deal_card
  total_points = points.reduce(:+) 
  puts total_points
    if total_points < 21
    puts "Do you want to hit or stay?"
    player_choice = gets.chomp.downcase
    if player_choice == "hit"
      points << deal_card
      puts total_points
    else
      break
    end
end  

# def hits
#   while player_total < 21
    
#     else
#       did_win
#       break
#     end
#   end
# end

def did_win
  if total_points == 21
    puts "You've won!"
  else
    puts "Sorry, you lost."
end

player_total
