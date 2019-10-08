require 'pry'

class String

  def sentence?
    return self.end_with?"."
  end

  def question?
      return self.end_with?"?"
  end

  def exclamation?
      return self.end_with?"!"
  end

  def count_sentences
    word_array = self.split(" ")
    sentence_count = 0
    
    word_array.each do |word|
      if (word.sentence? || word.question? || word.exclamation?)
        sentence_count += 1 
      end
    end
    
    return sentence_count
  end
end