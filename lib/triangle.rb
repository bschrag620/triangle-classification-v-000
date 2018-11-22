class Triangle
  attr_reader :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @a + @b <= @c || @a + @c <= @b || @b + @c <= @a
      begin
        raise TriangleError
      rescue TriangleError => error
        error.message
      end
    elsif @a == @b
      if @b == @c
        :equilateral
      else
        :isosceles
      end
    elsif @b == @c || @a == @c
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
      message = "Not a valid triangle"
  end
end
