# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: Number of Sides to Roll
# Output: Random Number based on number of sides
# Steps:
# generate a random number based on input


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if sides < 1
    	raise ArgumentError.new("Please input number greater than 0.")
    end
  end

  def sides
  	@sides
  end

  def roll
  	rand(1..@sides)
  end
end



# 3. Refactored Solution
# => The solution does not need refactoring.

# 4. Reflection

# What is an ArgumentError and why would you use one?
# => ArgumentErrors are errors that are raised when the arguments is passed to a method that is not acceptable.
# => ArgumentErrors are useful in order to guide users to provide acceptable arguments.
# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# => I implemented the .rand Ruby method. I didn't really run into any challenges when implementing it.
# What is a Ruby class?
# => A ruby class is an object that is used as a blueprint to create new objects.
# Why would you use a Ruby class?
# => Defining a class allows one to group methods into bundles so as to create new objects that will behave similarly.
# What is the difference between a local variable and an instance variable?
# => An instance variables are preceeded by an @ sign and are accessible across multiple methods. A local variable is created and only accessible within a method.
# Where can an instance variable be used?
# => Instance variables can be used across methods.
