# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: Gabriel].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Credit card number
# Output: if the credit card is valid or not (TRUE or FALSE)
# Steps: 

# + Check the length of the credit card digits. If length doesn't equal 16 digits return Arrgument error.

# Write a method to separate each digit (with spaces), put this in an array.

# + iterate the index to double every other digit starting from second to last

# + Starting with the second to last digit, double every other digit until you reach the first digit.

# + Doubled digits need to be broken apart, 10 becomes 1 + 0.

# + Sum all the untouched digits and the doubled digits 

# + Check if the total is a multiple of ten, return message valid credit card number


# Initial Solutionlize 

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard

# 	def initialize(card_number) 
# 		@card_number = card_number
# 		if card_number.to_s.length != 16
# 			raise ArgumentError.new ("Card length provided is not
# 				valid")
# 		end
# 	end


# 	def check_card

# 		@card_split_array = @card_number.to_s.split('')

# 		@double_even_digits = @card_split_array.map.with_index do |number,index|
# 			if index.odd?
# 				number.to_i
# 			else
# 				number.to_i * 2
# 			end
# 		end

# 		@join_double = @double_even_digits.join

# 		@split_double = @join_double.split('')

# 		sum = 0 
# 		@split_double.each do |element|
# 			sum += element.to_i
# 		end

# 		if sum % 10 == 0
# 			true 
# 		else
# 			false
# 		end
# 	end

# end


# Refactored Solution

class CreditCard

	def initialize(card_number) 
		@card_number = card_number
		if card_number.to_s.length != 16
			raise ArgumentError.new ("Card length provided is not
				valid")
		end
		# This verifies that the card length is 16 digits long and returns an error otherwise.
	end


	def check_card

		@card_split_array = @card_number.to_s.split('')
		# The above creates an array of split numbers to iterate over
		@double_even_digits = @card_split_array.map.with_index do |number,index|
		# This maps the card_split_array and doubles the even numbers.
			if index.even?
				number.to_i * 2
			else
				number.to_i 
			end
		end

		@join_even_odd = @double_even_digits.join
		# The above joins the doubled numbers and single digit numbers into one string.

		@split_all = @join_even_odd.split('')
		# The above separates the separated numbers into separate strings in order to add them together.

		sum = 0 
		@split_all.each do |element|
			sum += element.to_i
		end
		# The above adds all of the @split_numbers together to finally be able to verify the card number.

		if sum % 10 == 0
			true 
		else
			false
		end
		# the above verifies if the card number is valid by diving by 10 with remainder 0.

	end

end

# Reflection


# • What was the most difficult part of this challenge for you and your pair?
# The most difficult part by far was figuring out how to map the array of
#  split strings and index it so that we could double the even numbers. This
#  took hours. 
# • What new methods did you find to help you when you refactored?
# We found the .even? method to verify if the method was even, instead 
# of using % 2 == 0.


# • What concepts or learnings were you able to solidify in this challenge?
# I was able to solidify my understanding of classes and the way that 
# instance are accessed from outside of methods. This led me to get a few 
# errors at first, but it was easy to fix. I was also able to solidify my 
# understanding of arrays and indexing of arrays.