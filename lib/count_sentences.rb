require 'pry'

class String

  def sentence?
    return true if self.end_with?(".")
    false
  end

  def question?
    return true if self.end_with?("?")
    false
  end

  def exclamation?
    return true if self.end_with?("!")
    false
  end

  def count_sentences
    self.split(/[.!?]/).map{|x| !(x.match(/\w+/).nil?)}.reject{|x| x == false}.size
  end
end