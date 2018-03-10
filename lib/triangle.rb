class Triangle
  attr_accessor :s1, :s2, :s3
  attr_reader :equilateral, :scalene, :isosceles

  def initialize (s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    if s1 == s2 && s2 == s3 && s1 == s3
      :equilateral
    elsif s1 == s2 || s2 == s3 || s1 == s3
      :isosceles
    elsif s1 != s2 && s1 != s3 && s2 != s3
      :scalene
    end
  end
end
# s1 != s2 && s1 != s3 && s2 != s3
