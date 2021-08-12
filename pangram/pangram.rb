class Pangram
  LETTERS = *('a'..'z')
  def self.pangram?(sentence)
    pangram = LETTERS.map { |letter| sentence.downcase.include?(letter) }
    !pangram.include?(false)
  end
  
end
