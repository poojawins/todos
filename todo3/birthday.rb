require Time
require Date

def is_birthday

  puts "Enter your birthday (mm/dd)" 
  birthday = strptime(gets.chomp)
  #birthday.parse()

 today = (Time.now.month, Time.now.day)
    #strptime

  if birthday == today
    puts "Happy Birthday!"
  else
    puts "Awesome, but today's not your birthday!"
  end

end

is_birthday