def is_birthday
  puts "Enter your birthday (mm/dd)" 
  birthday = gets.chomp
  today = (Time.now.month).to_s + "/" + (Time.now.day).to_s
  if birthday == today
    puts "Happy Birthday!"
  else
    puts "Awesome, but today's not your birthday!"
  end
end

is_birthday