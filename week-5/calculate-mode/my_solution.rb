# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# group of numbers = [1, 1, 2, 3, 4]
# most common = return an arra with a 1 in it.

# What is the input?
# a group of integers or strings (an array)
# What is the output? (i.e. What should the code return?)
# an array of the most commonly used integers or strings
# What are the steps needed to solve the problem?
# method will iterate through the group of numbers (array) and count the number of instances the number appears
# 1. define the method and have it iterate through said array.
# 2. will have to add items to hash in order for the array to iterate.


# 1. Initial Solution
# def mode(array)
# 	counts = Hash.new (0)
# 	array.each do |i|
# 			#iterate over elements in array
# 			# if counts [i.to_s] == nil
# 			# 	counts [i.to_s] = 1
# 			# else
# 			counts [i] += 1
# 			#how to make it count the instances? 
# 		end
# 		counts
# 	end

# array = [1, 2, 3, 3, 4]


# 3. Refactored Solution

def mode(array)
	counts = Hash.new(0)
	array.each do |i|
	# creates empty has with no keys and gives them a value of (0)
	counts [i] += 1
 	# gives value of +1 to each key as it iterates through it.
 end

 highest = 0
 counts.each do |i,v|
 	if highest < v
 		highest = v
 	end
 end
 	# looks for the highest key value

 	new_array = []
 	# creates an empty array.

 	counts.each do |i,v|
 		if highest == v
 			new_array.push(i)
 		end
 		# adds highest key elements to array
 	end
 	new_array
 	# returns mode array
 end

puts mode([1,2,2,3,3,4,'sexy', 'sexy', 'sexy'])


# # 4. Reflection
# • Which data structure did you and your pair decide to implement and why?

# We used both arrays and hashes. We used the hash in order to determine which key had the highest value, then the array was used to store and return the key with the highest value.

# • Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 

# This week my first exercise was the GPS. I was a bit baffled by it and was unable to implement the code before the hour was over. With this exercise, we were able to do it in a little over an hour. It was more successful.

# • What issues/successes did you run into when translating your pseudocode to code?

# We did not include all the possible instances of integers and strings, so we had to figure out a way to broaden our scope and have the method not return failures.

# • What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

# We used .each. We did not find any new methods when refactoring, only broadened the scope so that it would cover strings. It was not difficult to implement.