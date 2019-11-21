require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    self.split.select {|word| word.sentence? || word.question? || word.exclamation?}.count
  end
end