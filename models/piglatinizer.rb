class PigLatinizer

VOWELS = ["a", "e", "i", "o", "u"]
UPVOWELS = ["A", "E", "I", "O", "U"]

def piglatinize(text)
  if text.length == 1
    return one_letter(text)
  else
    return create_array(text).join(" ")
  end
end


def create_array(text)
  prefixes = []
  text = text.split(" ")
  text.each_with_index do |word, index|
    i = 0
    prefix = ""
    word_to_edit = word
    while !VOWELS.include?(word[i]) && !UPVOWELS.include?(word[0]) do
      prefix += word[i]
      word_to_edit = word_to_edit[1..(word_to_edit.length-1)]
      i += 1

    end
    prefixes << prefix
    if VOWELS.include?(word[0]) || UPVOWELS.include?(word[0])
      text[index] = word_to_edit + prefixes[index] + "way"
    else
      text[index] = word_to_edit + prefixes[index] + "ay"
    end

  end
end

def one_letter(text)
  if VOWELS.include?(text) || UPVOWELS.include?(text)
    return text + "way"
  else
    return text + "ay"
  end
end


end

word = PigLatinizer.new
puts word.piglatinize("pork")
puts word.piglatinize("big apple")
