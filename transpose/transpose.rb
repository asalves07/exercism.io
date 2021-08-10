module BookKeeping
  VERSION = 2
end

class Transpose
  def self.transpose(input)
    return input if input.empty?
    array = input.lines.map &:chomp
    size_of_string = array.max_by(&:size).size
    lines = array.map do |l|
      l << 0.chr * (size_of_string - l.size)
    end
    lines.map(&:chars).transpose.map do |i|
      i.join.sub(/#{0.chr}*\z/, '').gsub(0.chr, ' ')
    end.join("\n")
  end
end