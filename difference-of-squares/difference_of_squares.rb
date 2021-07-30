class Squares
  attr_reader :number

  def initialize(number)
    @number = [*1..number]
  end

  def square_of_sum
    number.sum**2
  end

  def sum_of_squares
    number.map { |n| n**2 }.sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
