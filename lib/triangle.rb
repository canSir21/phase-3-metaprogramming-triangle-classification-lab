class Triangle
  attr_accessor :a, :b, :c

  def initialize a, b, c
    @a = a
    @b = b
    @c = c
  end

  def validate_triangle
    raise TriangleError unless sides_gretaer_than_zero? && valid_triange_inequality?
  end

  def sides_gretaer_than_zero? 
    [a,b,c].all?(&:positive?)
  end

  def valid_triange_inequality?
    a + b > c && a+c > b && b + c > a
  end

  class TriangleError < StandardError
  end

  def kind
    validate_triangle
    if a == b && b == c
      :equilateral
    elsif a==b || b == c || a == c
      :isosceles
    else
        :scalene
    end 
  end
  # write code here
end
