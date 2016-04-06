# Reverse Words


# I worked on this challenge [by myself].
# This challenge took me [1] hours.

# Pseudocode
=begin
Input: string of words.

Steps: 
1. split each word in the string into a list of words.
2. place each word into an array in order to iterate through it
3. reverse each word
4. put reversed words back into one string

Output: reversed array of words.
=end

# Initial Solution


# def reverse_words(sentence_string)
# 	words = sentence_string.split
# 	words.each {|word| word.reverse!}
# 	reverse_words_array = words.join(' ')
# 	p reverse_words_array
# end

# reverse_words("Ich bin ein Berliner")

# Refactored Solution:

def reverse_words(sentence_string)
	words = sentence_string.split
	words.each {|word| word.reverse!}
	reverse_words_array = words.join(' ')
	p reverse_words_array
end

reverse_words("Ich bin ein Berliner")



# Reflection

# # What concepts did you review in this challenge?
# I reviewed iterating through strings with .each.
# # What is still confusing to you about Ruby?
# There's much for me to learn still, though this challenge didn't really point anything out to me.
# # What are you going to study to get more prepared for Phase 1?
# I'm going to continue working on the remaining challenges.