
class Woodchuck
  attr_accessor :chuck_count

  @@woodchuck_count = 0
  @@woodchucked_total = 0
  WOODCHUCKS = []
  
  def initialize
    @chuck_count = 0
    @@woodchuck_count += 1
    WOODCHUCKS << self
  end

  def chuck_wood
    @chuck_count += 1
    @@woodchucked_total += 1
  end

  def self.woodchuck_count
    @@woodchuck_count
  end

  def self.woodchucked_total
    @@woodchucked_total
  end

end

rand(5).times { Woodchuck.new }

Woodchuck::WOODCHUCKS.each do |woodchuck|
  rand(5).times {woodchuck.chuck_wood}
end

puts Woodchuck::WOODCHUCKS.inspect
puts "Total woodchucks: #{Woodchuck.woodchuck_count}"
puts "Total wood chucked: #{Woodchuck.woodchucked_total}"


