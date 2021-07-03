require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    delimiters = ['. ', '? ', '! ', '...']
    new_sentence = self.split(Regexp.union(delimiters))
    new_sentence.count
    
  end
end