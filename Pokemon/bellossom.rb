class Bellossom
  attr_accessor :level, :type, :abilities, :catch_rate, :entry, :hp, :exp
  LEARNSET = { "Leaf Storm" => 5,
               "Sunny Day" => 5,
               "Leaf Blade" => 15,
               "Mega Drain" => 15,
               "Magical Leaf" => 20,
               "Sweet Scent" => 20,
               "Stun Spore" => 30
              }

  def initialize(level, type, abilities, catch_rate, entry, hp, exp)
    @level = 7
    @type = "Grass"
    @abilities = "Healer"
    @catch_rate = 0.059
    @entry = "They will sometimes gather and start dancing. It's also known as a ritual dance to worship the sun.*"
    @hp = 75
    @exp = 184
  end
  
  def say_name
    puts "Bellossom!"
  end

end