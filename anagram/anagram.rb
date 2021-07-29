class Anagram
  attr_reader :sentence

  def initialize(sentence)
    @sentence = sentence.downcase
  end

  def match(words)
    words.select { |word| match? word }
  end

  private

  def anagram_of?(word)
    word.downcase.chars.sort == sentence.chars.sort
  end

  def identical?(word)
    word.downcase == sentence
  end

  def match?(word)
    anagram_of?(word) && !identical?(word)
  end
end