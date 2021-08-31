class Phrase
  REGEX = /\s+|,|\n|:|\./
  
  def initialize(phrase)
    @words = phrase.downcase.split(REGEX).filter { |word| !word.empty? }
  end

  def word_count
    counts = {}
    @words.each do |word|
      counts.key?(word) ? counts[word] += 1 : counts[word] = 1
    end
    counts
  end
end