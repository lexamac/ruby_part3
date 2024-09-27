# Vowel Hash task

vowels = ['a', 'e', 'i', 'o', 'u', 'y']

result_hash = (('a'..'z').map.each_with_index { |letter, index| [letter, index + 1] if vowels.include? letter }).compact

print "Result Hash: #{result_hash}"
