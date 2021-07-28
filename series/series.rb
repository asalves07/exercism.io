class Series
  attr_reader :str

  def initialize(str)
    @numbers = str
  end

  def slices(size)
    raise ArgumentError.new('Slice size is greater than string length') unless size <= @numbers.length
    @numbers.scan(/(?=(.{#{size}}))/).flatten
  end
end