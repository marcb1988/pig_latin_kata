# Develop your work so far to preserve the existing capitalisation of the word
# e.g. Dog  -> Ogday
#      cram -> amcray
#
# Assume words either start with a capital letter or don't — don't worry about
# other formats

def pig_latin(word)
  vowels = ["a", "e", "i", "o", "u"]
  index_to_split = []
  new_word = ""
  if word[0..1].downcase === "qu"
    new_word = word[2..-1] + word[0..1] + "ay"
  elsif !vowels.include?(word.chars.first)
    word.split("").each do |letter|
      index_to_split << word.index(letter) if vowels.include?(letter)
    end
    new_word = word[index_to_split[0]..-1] + word[0...index_to_split[0]] + "ay"
  else
    new_word = word + "way"
  end
  word === word.capitalize ? new_word.capitalize : new_word
end

## Tests:

require_relative "./helpers/assert_equal"
assert_equal(pig_latin("Dog"), "Ogday")
assert_equal(pig_latin("cram"), "amcray")
