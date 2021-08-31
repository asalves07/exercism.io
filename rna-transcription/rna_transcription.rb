class Complement
  DNA = 'CATG'
  RNA = 'GUAC'

  def self.of_dna(str)
    str.tr(DNA, RNA)
  end
end