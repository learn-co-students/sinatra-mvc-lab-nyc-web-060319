class PigLatinizer
  def init
  end

  def piglatinize(str)
    str.split.map do |word|
      decide_vowel(word)
    end.join(" ")
  end

  def decide_vowel(word)
    if "aeoui".include?(word[0].downcase)
      do_vowel(word)
    else
      do_cons(word)
    end
  end

  def do_vowel(word)
    word + "way"
  end

  def do_cons(word)
    cons_num = 0
    while !"aeoui".include?(word[cons_num].downcase)
      cons_num += 1
    end
    str = word[cons_num...word.size] + word[0...cons_num] + "ay"
  end
end
