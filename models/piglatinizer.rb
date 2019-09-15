require 'pry'

class PigLatinizer
  attr_accessor :word

  def initalize(phrase=nil)
    @phrase = phrase
  end

  def to_pig_latin(phrase)
    phrase.split(' ').collect {|word| piglatinize(word)}.join(' ')
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
