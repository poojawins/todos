class Bonsly
  attr_accessor :level, :type, :abilities, :catch_rate, :entry, :hp, :exp
  LEARNSET = { "Block" => 5,
               "Sucker Punch" => 5,
               "Rock Throw" => 15,
               "Double Edge" => 15,
               "Low Kick" => 20,
               "Copycat" => 20,
               "Slam" => 20
              }

  def initialize(level, type, abilities, catch_rate, entry, hp, exp)
    @level = 1
    @type = "Rock"
    @abilities = "Rattled"
    @catch_rate = 0.333
    @entry = "Bonsly, the Bonsai Pokémon. Bonsly is the pre-evolved form of Sudowoodo. Although it looks like a Grass Pokémon, it is actually a Rock-type. When it collects too much moisture, it produces fake tears to get rid of it."
    @hp = 50
    @exp = 68
  end

  def say_name
    puts "Bonsly!"
  end

end