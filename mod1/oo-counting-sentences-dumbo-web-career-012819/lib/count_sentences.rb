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
    # self.split(/[.!?]/).delete_if{ |sentence| sentence == '' }.count
    self.split(" ").select {|word| ("?.!").include?(word[-1])}.count
  end
end
