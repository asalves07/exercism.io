# frozen_string_literal: true

class Triangle
  attr_reader :triangle

  def initialize(triangle)
    @triangle = triangle
  end

  def equilateral?
    return false if triangle.any?(0)

    triangle[0] == triangle[1] && triangle[0] == triangle[2] && triangle[1] == triangle[2]
  end

  def isosceles?

    if triangle[0] == triangle[1]
      triangle[0] + triangle[1] >= triangle[2]
    elsif triangle[0] == triangle[2]
      triangle[0] + triangle[2] >= triangle[1]
    elsif triangle[1] == triangle[2]
      triangle[1] + triangle[2] >= triangle[0]
    else
      false
    end
  end

  def scalene?
    return false if biggest_side > sum_of_the_smaller_sides

    triangle[0] != triangle[1] && triangle[0] != triangle[2] && triangle[1] != triangle[2]
  end

  private

  def index_max
    triangle.index(triangle.max)
  end

  def sum_of_the_smaller_sides
    triangle.sum - biggest_side
  end

  def biggest_side
    triangle[index_max]
  end
end
