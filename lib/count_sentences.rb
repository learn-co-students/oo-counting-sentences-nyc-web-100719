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
    x = self.split(".")
    x.each.with_index do |y, i|
      if y.include?("!")
        x[i] = y.split("!")
        #binding.pry
      end
    end
    x.flatten!
    #binding.pry
    x.each.with_index do |y, i|
      if y.include?("?")
        x[i] = y.split("?")
        #binding.pry
      end
    end
    x.flatten!
    #binding.pry
    x.delete_if do |sentence|
      sentence == ""
    end
    #binding.pry
    x.length
  end
end
