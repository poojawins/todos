

class Deli

  attr_accessor :line

  def initialize(customer_name)
    @customer_name = customer_name
    @line = []
  end

  def take_a_number(customer_name)
    customer_name = (line.length + 1).to_s + " " + customer_name
    line << customer_name
  end

  # def now_serving
  #   puts line[0]
  #   line = line.shift
  # end

end

my_turn = Deli.new("Pooja")
rob_turn = Deli.new("Rob")
other_turn = Deli.new("Other")
puts my_turn.take_a_number("Pooja")
puts my_turn.take_a_number("Rob")
puts my_turn.take_a_number("Other")
# puts my_turn.now_serving

