class StrandLengthError < ArgumentError
  def initialize(message = 'Strands must be the same length')
    super
  end
end

class Hamming
  def self.compute(strand1, strand2)
    new(strand1, strand2).distance
  end

  private

  attr_reader :nucleotides

  def initialize(strand1, strand2)
    raise StrandLengthError unless strand1.length == strand2.length
    nucleotide(strand1, strand2)
  end

  def nucleotide(strand1, strand2)
    @nucleotides ||= strand1.chars.zip(strand2.chars)
  end

  public

  def distance
    nucleotides.count { |n1, n2| n1 != n2 }
  end
end