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
    delim = ['. ','? ','! ']
    count = self.split(Regexp.union(delim)).count
    return count 
  end
end