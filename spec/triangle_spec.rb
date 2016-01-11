require('rspec')
require('triangle')

describe(Triangle) do
  describe('#equilateral?') do
    it('will return true when all inputs are equal') do
      test_triangle = Triangle.new(1,1,1)
      expect(test_triangle.equilateral?()).to(eq(true))
    end
  end
end
