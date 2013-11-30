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

  def level_up
    if exp > level**3
      level += 1
    end
  end

  # def gain_exp new_exp
  #   exp += new_exp
  # end

  def say_name
    puts "Bellossom!"
  end

end


class Marill
  attr_accessor :level, :type, :abilities, :catch_rate, :entry, :hp, :exp
  LEARNSET = { "Rain Dance" => 5,
               "Superpower" => 5,
               "Aqua Tail" => 10,
               "Double-Edge" => 15,
               "Bubble Beam" => 20,
               "Helping Hand" => 20,
               "Bubble" => 30
              }

  def initialize (level, type, abilities, catch_rate, entry, hp, exp)
    @level = 3
    @type = ["Water", "Fairy"]
    @abilities = "Sap Sipper"
    @catch_rate = 0.248
    @entry = "Marill, the Water Mouse Pokémon. Its sensitive ears can detect distant sounds and the round rubbery tip on its tail can expand and contract, assisting Marill in the water."
    @hp = 70
    @exp = 58
  end

  def level_up
    if exp > level**3
      level += 1
    end
  end

  # def gain_exp new_exp
  #   exp += new_exp
  # end

  def say_name
    puts "Marill!"
  end

end


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

  def level_up
    if exp > level**3
      level += 1
    end
  end

  # def gain_exp new_exp
  #   exp += new_exp
  # end

  def say_name
    puts "Bonsly!"
  end

end

