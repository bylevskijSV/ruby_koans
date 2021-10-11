# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  if a < 0 || b < 0 || c < 0
    raise TriangleError, "a side of a triangle cannot be of negative length"
  elsif a == 0 || b == 0 || c == 0
    raise TriangleError, "a side of a triangle cannot be of zero length"
  elsif a >= (b + c) || b >= (a + c) || c >= (a + b)
    raise TriangleError, "Each side of a triangle is smaller than the sum of the other two sides"
  end

  ab_equal = a == b
  ac_equal = a == c
  bc_equal = b == c

  if ab_equal && bc_equal
    return :equilateral
  elsif ab_equal || ac_equal || bc_equal
    return :isosceles
  else
    return :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
