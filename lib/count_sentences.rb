require 'pry'


# Practice defining instance methods on a class.
# Practice defining instance methods that use the self keyword to operate on the object on which the method is being called.
# Learn about monkey patching.

class String

  @@all = []

  def self.all
    @@all
  end

  def sentence?
   self.end_with?(".") ? true : false

  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences

  sentences=self.split(/[..?!]/)
  sentences.delete_if{|sentence| sentence.empty?}
  sentences.length
    
  end
end

#"This, well, is a sentence. This is too!! And so is this, I think? Woo..."