class Deli

  attr_accessor :line

  def initialize
    @line = []
  end

  def take_a_number(customer_name)
    format_name = (1 + @line.length).to_s + ". " + customer_name
    @line << format_name
    @line.length
  end

  def now_serving
    @line.shift
  end

end

my_turn = Deli.new
my_turn.take_a_number("Pooja")
my_turn.take_a_number("Rob")
my_turn.take_a_number("John")
puts my_turn.now_serving
puts my_turn.now_serving
puts my_turn.now_serving
puts my_turn.now_serving
