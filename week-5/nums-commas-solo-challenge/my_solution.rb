# Numbers to Commas Solo Challenge

# I spent [7] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
	# an function that gives an integer without commas
# What is the output? (i.e. What should the code return?)
	# the output should be a comma-separated number (string).
# What are the steps needed to solve the problem?
	# I must create a method that can count the amount of
	# digits within an integer, then convert it to a string
	# and add a comma every 3rd digit from the right to the left.
	# In order to able to add the comma, the string needs to be
	# split every 3rd digit and then a comma needs to be added
	# every third digit 
	#IF a number has only 3 digits, THEN it should just print
	# that number as a string.


# 1. Initial Solution

# def separate_comma(integer)
#  if integer.to_s.size < 4
#  	p integer.to_s
#  else integer.to_s.size >= 4
#  	split_integer = integer.to_s.reverse.split("")
#     array_of_three = split_integer.each_slice(3)
#     put_together = array_of_three.map{ |array| array.join }
#     put_together.reverse.join(",")
#  end
# end

# puts separate_comma(999)
# puts separate_comma(1000)
# puts separate_comma(9999999999999999)




# 2. Refactored Solution
def separate_comma(integer)
 if integer.to_s.size < 4
 	p integer.to_s
 	# just prints integer that is only 3 digits
 else integer.to_s.size >= 4
 	split_integer = integer.to_s.reverse.split("")
 	# split integer to single digit array that is reversed for counting from right to left
    array_of_three = split_integer.each_slice(3)
    # make separate arrays of three individual strings
    put_together = array_of_three.map{ |array| array.join }
    # put individual strings back together in blocks of 3 joined strings
    put_together.reverse.join(",")
    # reverse array, join separate arrays of 3 using comma between arrays. done!
 end
end



# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?
# => I attempted to break down the problem to each step necessary for Ruby to figure out where to add
# => the commas. I knew it had to get Ruby to count three digits from left to right, then to add commas
# => every third digit. Figuring out which methods to use for this was a huge pain in the ass and full of
# => error.
# Was your pseudocode effective in helping you build a successful initial solution?
# => Yes, the pseudocode helped me to break down the problem into smaller parts and then find methods
# => for the smaller parts.
# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# => Once I got the solution to work, I stuck to the methods I used and just added comments to make it more clear.
# How did you initially iterate through the data structure?
# => I converted each integer to a string, then reversed it, then made separate arrays of 3 individual strings, then rejoined them with commas in between. 
# Do you feel your refactored solution is more readable than your initial solution? Why?
# => Yes, my refactored solution makes each step to the solution more clear.
