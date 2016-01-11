class Triangle
  define_method(:initialize) do |s1, s2, s3|
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def not_triangle?()
    if ((@s1 + @s2) <= @s3) || ((@s1 + @s3) <= @s2) || ((@s2 + @s3) <= @s1)
      return true
    else
      return false
    end
  end

  def equilateral?()
    if (@s1 == @s2) && (@s1 == @s3) && (@s2 == @s3)
      return true
    else
      return false
    end
  end

  def scalene?()
    if ((@s1 != @s2) && (@s2 != @s3) && (@s1 != @s3)) && (((@s1 + @s2) > @s3) || ((@s2 + @s3) > @s1) || ((@s1 + @s3) > @s2))
      return true
    else
      return false
    end
  end

  def isosceles?()
    if (@s1 == @s2) || (@s1 == @s3) || (@s2 == @s3)
      return true
    else
      return false
    end
  end

end
