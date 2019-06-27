class PigLatinizer 
    attr_accessor :text
    
    def initialize(text)
        @text = text
    end

    def word_arr
        @text.split(' ') 
    end


    def pig_latinfy
        word_arr.map do |word|
            if /[aeiou]/.match?(word)
                append = word.slice!( 0, word.index(/[aeiou]/) )
                word = word+append+"ay"
            else
               word + "ay"
            end
        end.join(" ").capitalize
    end
end


# "noodle soup" becomes "oodlenay oupsay" 
# "flatiron school" becomes "atironflay oolschay"
# "big apple" becomes "igbay appleway" (note the added "w" in "appleway")
