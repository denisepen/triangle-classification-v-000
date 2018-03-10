class Triangle
  attr_accessor :s1, :s2, :s3
  attr_reader :equilateral, :scalene, :isosceles

  def initialize (s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    if s1 == 0 || s2 == 0 || s3 == 0
      raise TriangleError
    elsif s1 <= 0 || s2 <= 0 || s3 <= 0
      raise TriangleError
    else s1 + s2 > s3 || s2 + s3 > s1 || s1 + s3 > s2
      raise TriangleError

    end
  
    if s1 == s2 && s2 == s3 && s1 == s3
      :equilateral
    elsif s1 == s2 || s2 == s3 || s1 == s3
      :isosceles
    else s1 != s2 && s1 != s3 && s2 != s3
      :scalene
    end
  end


  end
end

class TriangleError < StandardError
 # triangle error code
end
