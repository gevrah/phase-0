# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: Riley and Gabo].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array of numbers	
# Output: sum of array
# Steps to solve the problem.
# => add each consecutive number and store in variable until all numbers in range are added

# 1. total initial solution

# def total(sum_array)

# 	idx = 0

# 	counter = 0

# 	while idx < sum_array.length

# 		counter += sum_array[idx]

# 		idx += 1

# 	end

# 	counter

# end

#1.2

# 3. total refactored solution

def total(sum_array)
	sum_array.inject(:+)
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of strings
# Output: one string (a sentence of individual strings)
# Steps to solve the problem.

#figure out some way to add separate strings to one array. shovel will likely work.

# 5. sentence_maker initial solution

# def sentence_maker(some_strings)
# 	new_string = ""
# 	some_strings.each do |word|
# 		new_string << "#{word} "
# 	end
# 	new_string.capitalize.strip << "."

# end


# 6. sentence_maker refactored solution

def sentence_maker(some_strings)
	
	some_strings.join(" ").capitalize << "."

end


