class Triangle

  attr_reader :x, :y, :z
  def initialize (x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    if not_valid?
      raise TriangleError
    elsif x == y && y == z
      :equilateral   
    elsif x == y || y == z || z == x
      :isosceles 
    else 
      :scalene
    end
  end

  def not_valid?
    x + y <= z || y + z <= x || z + x < y
    x <= 0 || y <= 0 || z <= 0
  end

end


class TriangleError < StandardError
end




