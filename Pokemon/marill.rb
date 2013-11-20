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

  def initialize
    @level = 3
    @type = ["Water", "Fairy"]
    @abilities = "Sap Sipper"
    @catch_rate = 0.248
    @entry = "Marill, the Water Mouse Pokémon. Its sensitive ears can detect distant sounds and the round rubbery tip on its tail can expand and contract, assisting Marill in the water."
    @hp = 70
    @exp = 58
  end

end