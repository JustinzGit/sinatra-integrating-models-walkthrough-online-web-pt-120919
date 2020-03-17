class TextAnalyzer
  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def count_of_words
    words = text.split(" ")
    words.count
  end

  def count_of_vowels
    text.scan(/[aeoui]/).count
  end

  def count_of_consonants
    text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end

  def most_used_letter
    s1 = text.gsub(/[^a-z]/, '') # Gets rid of spaces
    array = s1.split('')
    array1 = array.uniq
    array2 = {}

    array1.map do |c|
      array2[c] = array.count(c)
    end

    biggest = {array2.keys.first => array2.values.first}

    array2.each do |key, value|
      if value > biggest.values.first
        biggest = {}
        biggest[key] = value
      end
    end
    biggest
  end  
end
