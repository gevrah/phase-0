# Factorial

# I worked on this challenge [by myself, with: riley kenyon ].


# Your Solution Below
def factorial(number)
	total = 1
	(1..number).each do |number|
		total *= number   
	end
	total
end

