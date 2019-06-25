class PigLatinizer
  def piglatinize(str)
    str.split(" ").length == 1 ? piglatinize_word(str) : piglatinize_sentence(str)
    # if str.split(" ").length == 1
    #   piglatinize_word(str)
    # else
    #   piglatinize_sentence(str)
    # end
  end

  def consonant?(char)
    !char.match(/[aAeEiIoOuU]/)
  end

  def piglatinize_word(str)
    # str starts with vowel
    if !consonant?(str[0])
      str = str + "w"
    elsif consonant?(str[0]) && consonant?(str[1]) && consonant?(str[2])
      str = str.slice(3..-1) + str.slice(0, 3)
      # str starts with 2 consonants
    elsif consonant?(str[0]) && consonant?(str[1])
      str = str.slice(2..-1) + str.slice(0, 2)
      # str starts with 1 consonant
    else
      str = str.slice(1..-1) + str.slice(0)
    end
    str = str + "ay"
  end

  def piglatinize_sentence(str)
    str.split(" ").map do |word|
      piglatinize_word(word)
    end.join(" ")
  end
end
