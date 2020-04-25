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
    my_array=[]
    my_array=self.split
    i=0
    count=0
    while i < my_array.length
      if (my_array[i].sentence? || my_array[i].question? || my_array[i].exclamation?)
        count+=1
      end
      i+=1
   end
  
    count
  end
end