require Time
require 'date'

def is_birthday(birthday)

  puts "Enter your birthday (mm/dd)"
  birthday = gets.chomp
  birthday.parse()
  birthday = strptime(gets.chomp, '%Y')
  today = Time.now. ()
    today_date.month
    today_date.day
    strptime
  if birthday = today
    puts "happy birthday"
  else
    puts "awesome"
  end
end