class SumOfMultiples
  attr_accessor :denominators

  def initialize(*denominators)
    @denominators = denominators
  end

  def to(number)
    return 0 if denominators.include?(0) || denominators.empty?

    [*0..number - 1].select { |n| multiple? n }.sum
  end

  private

  def multiple?(number)
    denominators.find { |base| (number % base).zero? }
  end
end