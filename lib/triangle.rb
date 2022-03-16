class Triangle
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2  
    @length3 = length3
  end

  def kind
    self.valid?
    if @length1 == @length2 && @length2 == @length3
      :equilateral
    elsif @length1 == @length2 || @length2 == @length3 || @length3 == @length1
      :isosceles
    else
      :scalene
    end
  end

  private

  def valid?
    if @length1 <= 0 || @length2 <= 0 || @length3 <= 0
      raise TriangleError
    elsif @length1 + @length2 <= @length3 || @length2 + @length3 <= @length1 || @length3 + @length1 <= @length2
      raise TriangleError
    else
    end
  end

  class TriangleError < StandardError
    puts "Not a valid triangle"
  end
  
end
