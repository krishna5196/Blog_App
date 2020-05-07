module TextCheck
  WRONG_WORDS = ["bad","poor","filthy","dirty","stupid"]

  def text_check(text)
    if WRONG_WORDS.any? { |word| text.include? word }
      return true
    else
      return false
    end
  end
end
