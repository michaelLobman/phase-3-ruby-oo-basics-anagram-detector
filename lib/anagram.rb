require 'pry'

class Anagram
    attr_reader :word
    def initialize(word)
        @word = word
    end

    def match(array)
        chars_to_match = word.chars.sort
        array.filter do |case_word|
            case_word.chars.sort == chars_to_match
        end
    end

end
