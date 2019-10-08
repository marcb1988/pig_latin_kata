# Develop your work so far to treat 'qu' as a special case, so that those words
# end in 'quay'
# e.g. quick -> ickquay
#      quilt -> iltquay
#      qat   -> atqay

def pig_latin(word)
  vowels = ["a", "e", "i", "o", "u"]
  index_to_split = []
  if word[0..1] === "qu"
    word[2..-1] + word[0..1] + "ay"
  elsif !vowels.include?(word.chars.first)
    word.split("").each do |letter|
      index_to_split << word.index(letter) if vowels.include?(letter)
    end
    pig_latin_word = word[index_to_split[0]..-1] + word[0...index_to_split[0]] + "ay"
    pig_latin_word
  else
    word + "way"
  end
end

## Tests:

require_relative "./helpers/assert_equal"
assert_equal(pig_latin("quick"), "ickquay")
assert_equal(pig_latin("quilt"), "iltquay")
assert_equal(pig_latin("qat"), "atqay")
