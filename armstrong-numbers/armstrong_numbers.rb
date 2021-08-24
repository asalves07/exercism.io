class ArmstrongNumbers
  def self.include?(number)
    count = number.digits.count
    number.digits.sum { |digit| digit**count } == number
  end
end