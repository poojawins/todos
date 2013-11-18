require Time
require Date

def is_birthday

  puts "Enter your birthday (mm/dd)" 
  birthday = strptime(gets.chomp)
  #birthday.parse()

  today = Time.new
    # today_date.month
    # today_date.day
  today = (today_date.month, today_date.day)
    #strptime

  if birthday == today
    puts "Happy Birthday!"
  else
    puts "Awesome!"
  end

end

is_birthday