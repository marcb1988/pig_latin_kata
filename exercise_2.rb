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
  if !vowels.include?(word.chars.first)
    consonants = word.split("").each { |letter| }
    consonants
    #word[1..-1] + word.chars.first + "ay"
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
