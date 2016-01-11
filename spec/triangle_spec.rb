require('rspec')
require('triangle')

describe(Triangle) do
  describe('#equilateral?') do
    it('will return true when all inputs are equal') do
      test_triangle = Triangle.new(1,1,1)
      expect(test_triangle.equilateral?()).to(eq(true))
    end
  end

  describe('#scalene?') do
    it('will return true when all inputs are not equal') do
      test_triangle = Triangle.new(1,2,3)
      expect(test_triangle.scalene?()).to(eq(true))
    end
  end

  describe('#isosceles?') do
    it('will return true when 2 inputs are equal and 1 is not') do
      test_triangle = Triangle.new(1,1,2)
      expect(test_triangle.isosceles?()).to(eq(true))
    end
  end

end
