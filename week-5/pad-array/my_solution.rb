# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? an array, minimum size, a default value
# What is the output? an array
# What are the steps needed to solve the problem?
# IF size of array < minimum size, return new array padded with default value
# up to minimum size


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  difference = min_size - array.length
  new_array = Array.new(difference, value)
  padded_array = array.push(new_array)
  array = padded_array.flatten!
  p array
end


def pad(array, min_size, value = nil) #non-destructive
  difference = min_size - array.length
  new_array = Array.new(difference, value)
  padded_array = array.concat(new_array)
  p padded_array
end


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  array.fill(value, array.length...min_size)
  p array
end

def pad(array, min_size, value = nil)
  new_array = array.dup.fill(value, array.length...min_size)
  p new_array
end


# 4. Reflection

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
	# The major difficulty came in the beginning, when we were trying to figure out how to structure
	# the method so that it would perform the function we required. Once we figured out that we needed
	# the difference between the array length and the min_size, it was straight forward from there.
	#
# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
	# Our initial solution was successful at passing the tests. This is because, as we translated our pseudocode,
	# the parameters we input for the method were the correct ones.
	#
# When you refactored, did you find any existing methods in Ruby to clean up your code?
	# We found the .dup and the .fill methods, which allowed us to shrink our code by two lines.
	#
# How readable is your solution? Did you and your pair choose descriptive variable names?
	# Our initial solution is more readable than our refactored solution. I'd say it's fairly easy
	# to understand.
# What is the difference between destructive and non-destructive methods in your own words?
	# Destructive methods replace the original array, while non-destructive methods do not change the original array.