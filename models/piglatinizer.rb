require 'pry'

class PigLatinizer
  attr_accessor :word

  def initalize(phrase=nil)
    @phrase = phrase
  end

  def piglatinize(sentence)
      sentence.split(" ").collect! {|word| piglatinize_word(word)}.join(' ')
  end

  def is_vowel?(word)
    vowels = 'aeiouAEIOU'
   vowels.include?(word[0])
  end

  def piglatinize_word(word)
    vowels = 'aeiouAEIOU'
    new_word = ""
    if vowels.include?(word[0])
      new_word = word.concat('way')
    else
      new_word = word.concat(word.slice!(/^[^aeiouAEIOU]*/i || "")) + 'ay'
    end
    new_word
  end
end
