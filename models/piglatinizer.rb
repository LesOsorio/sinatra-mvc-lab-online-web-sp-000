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

  def piglatinize(word)
   if self.is_vowel?(word)
     word.concat('way')
   else
     word.concat(word.slice!(/^[^aeiouAEIOU]*/i || "")) + 'ay'
   end
 end
end
