class Triangle
  attr_reader :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
    puts "#{a+b}, #{b+c}, #{c+a}"
    puts "#{c}, #{a}, #{b}"
    if @a + @b <= @c || @a + @c <= @b || @b + @c <= @a
      puts "made it to error"
      begin
        raise TriangleError
      rescue TriangleError => error
        error.message
      end
    end
  end

  def kind

    if @a == @b
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
