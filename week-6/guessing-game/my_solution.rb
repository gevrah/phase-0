# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: integer that is a guess of the number the program is storing
# Output: guess low, guess high, guess correct
# Steps:
# Method 1:
# 1.0 check if guess is lower than the correct answer
# 1.1 return low if guess is lower than answer
# 1.2 check if guess is higher than the correct answer
# 1.3 return low if guess is higher than correct answer
# 1.4 check if guess is equal to answer
# 1.5 return correct if answer is qual to guess

# Method 2:
# 2.0 create a method solved? that returns true if most recent geuss is correct
# and false if it is not correct.

# Initial Solution

# class GuessingGame
# 	def initialize(answer)
# 		@answer = answer
# 	end

# 	def guess(guess)
# 		@guess = guess
# 		if @guess < @answer
# 			return :low
# 		elsif @guess > @answer
# 			return :high
# 		else
# 			return :correct
# 		end
# 	end

# 	def solved?
# 		if @guess == @answer
# 			return true
# 		else
# 			return false
# 		end
# 	end

# end




# Refactored Solution


class GuessingGame
	def initialize(answer)
		@answer = answer
	end

	def guess(guess)
		@guess = guess
		if @guess < @answer
			return :low
			puts "Your guess is too low, please guess again."
		elsif @guess > @answer
			return :high
			puts "Your guess is too high, please guess again."
		else
			return :correct
			puts "Your answer is right!"
		end
	end

	def solved?
		if @guess == @answer
			return true
		else
			return false
		end
	end

end





# Reflection
# • How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# Instance variables are accessible from outside of the method they were
#  created, so long as the method is within the same class. A metaphor: 
# a machine might have gears that are useable within other sections of 
# the same machine, but not in any other machine.

# • When should you use instance variables? What do they do for you?
# Instance variables are used when it's necessary to access the same 
# variable from outside of the method it was created, but within the same 
# class.


# • Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# Flow control creates branches based on given conditions. It's basic 
# logic. This challenge was fairly straight forward in that all the 
# parameters for these logical forks were given to us within the release.


# • Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# Symbols cannot be changed, they are immutable. In addition, symbols, like integers, are unique. 
# I am not so sure why a using symbols was necessary here!