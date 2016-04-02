# I worked on this challenge [by myself: ].
# This challenge took me [2] hours.

=begin
Pseudocode


Input: 
Array of integers

Steps:
1. Create method called super_fizzbuss which takes the array as an input and outputs the following:""

Output: 
1. multiples of 3 will be replaced with the word "Fizz"
2. multiples of 5 will be replaced with the word "Buzz"
3. multiples of 15 will be replaced with the word "FizzBuzz"

=end



# Initial Solution
=begin
def super_fizzbuzz(array)
	index = 0
	while index < array.length
		if array[index] % 15 == 0
			array[index] = "FizzBuzz"
		elsif array[index] % 3 == 0
			array[index] = "Fizz"
		elsif array[index] % 5 == 0
			array[index] = "Buzz"
		else
			array[index]
		end
		index += 1
	end
	return array
end

p super_fizzbuzz([45, 15, 3, 5, 9, 1, 2])
=end
 

# Refactored Solution


def super_fizzbuzz(array)
	array.map.with_index do |num, index|
		if array[index] % 15 == 0
			array[index] = "FizzBuzz"
		elsif array[index] % 3 == 0
			array[index] = "Fizz"
		elsif array[index] % 5 == 0
			array[index] = "Buzz"
		end
	end
	return array
end

p super_fizzbuzz([45, 15, 3, 5, 9, 1, 2])

# Reflection
=begin
• What concepts did you review or learn in this challenge?
I reviewed the ruby Arrays and how to iterate through them using while loops and .map

• What is still confusing to you about Ruby?
This exercise served as a good review, not much in it was confusing. I'm going to try some new exercises though, and  hopefully I'll be confused by something there.

• What are you going to study to get more prepared for Phase 1?
I’m going to study how to solve novel problems in order to expand my understanding of ruby.
=end