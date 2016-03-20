#Attr Methods

# I worked on this challenge [by myself]

# I spent [3] hours on this challenge.

class NameData
	attr_accessor :name
	
	def initialize
		@name = "Gabriel"
	end

end


class Greetings
	
	def initialize
		@student = NameData.new
	end

	def hello
		p "Hello #{@student.name}, how wonderful to see you today." 
	end

end
s
greet = Greetings.new

greet.hello

# Reflection

# Release 1:

# What are these methods doing?
# These methods are modifying and returning the value of instance variables.

# How are they modifying or returning the value of instance variables?
# By creating a method that accepts an argument that changes the value of the instance variable.

# Release 2:

# What changed between the last release and this release? What was replaced?
# These methods are doing the same as the previous, except the attr_reader :age replaced the what_is_age method.

# Is this code simpler than the last?
# Yes, this code is shorter and more clear, so simpler than the last.

# Release 3:
# What changed between the last release and this release? # What was replaced?
# # Instead of creating a what_is_age and a chage_my_age method, the attr_reader and attr_writer :age accessors were used. These allow for reading and writing of the value of the instance variables. 

# Is this code simpler than the last?
# It is simpler!

# Release 4:
# What changed between the last release and this release? # What was replaced?
# Instead of creating a what_is_age and a chage_my_age method, the attr_accessor was used for both reading and writing into the instance variable.

# Is this code simpler than the last?
# It is even simpler than the last 3.

# My_solution.rb Reflection:
# • What is a reader method?
# Attribute methods allow for the decreasing of repetitiveness in defining instance 
# variables in code. The attribute reader method is a concise way of creating a method 
# that reads and returns the value of the instance variable with the same name as the method.

# • What is a writer method?
# Like the reader method, the writer method allows one to write or set instance variables 
# in a more concise way. 


# • What do the attr methods do for you?
#  An attr_accessor method combines the functionality of both the reader and the writer 
# method into one, and is thus even more concise.

# • Should you always use an accessor to cover your bases? Why or why not?
#  Accessor methods should only be used when appropriate. When programmers want users to
#  be able to only access information, then the reader method should be used. When it's 
#  appropriate to be able to change the instance variable, then the writer method should be
#  used. When both reading and writing of the instance variable is necessary, then and only
#  then should the attr_accessor method be used.

# • What is confusing to you about these methods?
#  There's nothing particularly confusing about them, as they represent a simpler, self-explanatory
#  way to perform a method that would otherwise take more lines and be more convoluted.
