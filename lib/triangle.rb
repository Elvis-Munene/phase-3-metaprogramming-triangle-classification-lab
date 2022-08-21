class Triangle
 
  attr_reader :x, :y, :z

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  #Triangle has three sides.(Dimensions x,y,z)
  #Type of triangle is determined by the size of the lengths.
  #  Equilateral x =y =z
  # Isosceles x=y or x=z or y=z
  # scalene x != y != z 

  def kind
    valid_triangle
    if x==y && y==z
      :equilateral
    elsif x==y || x==z || y==z
      :isosceles
    else 
      :scalene   
  end
end


def valid_triangle
    valid_tria = [(x+y > z), (x+ z > y), (y+z >x)]
    [x,y,z].each do |side|
      valid_tria << false if side <= 0
      raise TriangleError if valid_tria.include?(false)
    end
  end

  class TriangleError < StandardError
  end

  end



