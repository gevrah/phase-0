# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 
# => Group of items
# Output: 
# => A randomly selected item from group
# Steps:
# => Get group of items from user
# => Select one item from group randomly
# => Return error if no item is given by user


# Initial Solution

class Die
  def initialize(labels)
  	@labels = labels
  	@sides = labels.length
  	if labels.any? == false
  		raise ArgumentError.new("Please input at least one label.")
  	end
  end

  def sides
  	return @sides
  end

  def roll
  	@labels.sample
  end
end

die = Die.new(['a', 'b', 'c'])
p die.roll
p die.sides


# Refactored Solution

class Die
  def initialize(labels)
  	@labels = labels
  	@sides = labels.count
  	if labels.any? == false
  		raise ArgumentError.new("Please input at least one label.")
  	end
  end

  def sides
  	return @sides
  end

  def roll
  	@labels.sample
  end
end

die = Die.new(['a', 'b', 'c'])
p die.roll
p die.sides






# Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

#The main difference was that I had to be able to feed this
# die class an arbitrary array of strings and to count the
# size of this array. Counting the amount of strings in the
# array proved difficult, as I did not know that I had to
# create another class variable in order to be able to count
# the amount of items in the array.

# What does this exercise teach you about making code that is easily changeable or modifiable? 

# If one makes one's code organized and easy to
# understand, it is much easier to then change this code
# for new purposes.


# What new methods did you learn when working on this challenge, if any?
# I learned about .sample and .count. .sample was used to
# choose a random string, and .count was used to count
# the amount of strings in an array.

# What concepts about classes were you able to solidify in this challenge?

#I was able to better understand that it's necessary to
#define class variables within the class in which they are
# initialized.

