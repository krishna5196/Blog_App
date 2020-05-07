module WordCheck
extend ActiveSupport::Concern

  WRONG_WORDS = ["bad","poor","filthy","dirty","stupid"]

  def text_check(text)
    if WRONG_WORDS.any? { |word| text.include? word }
       true
    else
       false
    end
  end

  module ClassMethods
    def count_vowels(sentence)
      vowels = ["a", "e", "i", "o", "u"]
      counter = 0
      sentence.split("").each do |char|
        vowels.each do |vowel|
          if char == vowel
            counter += 1
          end
        end
      end
      puts counter
    end
  end

  # def self.included(including_class)
  #   including_class.extend CountVowel
  #   including_class.send(:belongs_to, :user)
  # end

  included do
    belongs_to :user
  end

end
