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
    arr = self.split(/\?|\.|!/)
    new_arr = arr.delete_if { |x| x == "" }
    new_arr.count
  end
end