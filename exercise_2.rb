# Develop your proram to handle multiple consonants at the start of words.
#
# The rule is:
# If the word starts with one or more consonants, move them to the end.
# e.g. cram     -> amcray
#      sprinkle -> inklespray
#
# Still assume the words are lowercase.

def pig_latin(word)
  vowels = ["a", "e", "i", "o", "u"]
  index_to_split = []
  if !vowels.include?(word.chars.first)
    word_split = word.split("").each do |letter|
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
assert_equal(pig_latin("cram"), "amcray")
assert_equal(pig_latin("sprinkle"), "inklespray")
assert_equal(pig_latin("dog"), "ogday")
assert_equal(pig_latin("up"), "upway")
