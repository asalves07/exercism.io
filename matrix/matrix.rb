class Matrix
  attr_reader :rows, :columns

  def initialize(str)
    @rows = str.lines.map { |v| v.split.map(&:to_i) }
    @columns = rows.transpose
  end
end
