require 'pry'

class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if side1 == side2 && side2 = side3 && side3 == side1
      :equilateral
    elsif side1 == side2 || side2 == side3 || side1 == side3
      :isosceles
    else
      binding.pry
    end
  end

  class TriangleError < StandardError
    # triangle error code
  end
end
