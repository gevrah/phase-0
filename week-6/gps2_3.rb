# Your Names
# 1) Gabriel Zurita
# 2) John Colella

# We spent [1.5] hours on this challenge.

# Bakery Serving Size portion calculator.

# Inital Solution:

# def serving_size_calc(item_to_make, num_of_ingredients)
#   library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
#   error_counter = 3

#   library.each do |food|
#     if library[food] != library[item_to_make]
#       error_counter += -1
#     end
#   end

#   if error_counter > 0
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end

#   serving_size = library.values_at(item_to_make)[0]
#   remaining_ingredients = num_of_ingredients % serving_size

#   case remaining_ingredients
#   when 0
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
#   else
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#   end
# end

# Refactored:

def serving_size_calc(item_to_make, num_of_ingredients)
#   keep hash as is; this creates our library of items and ingredients
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  if library.has_key?(item_to_make)
    serving_size = library.values_at(item_to_make)[0]
  else
    # p "#{item_to_make} is not a valid input"
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  remaining_ingredients = num_of_ingredients % serving_size
  suggested_items = serving_size - remaining_ingredients
  
  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: we need #{suggested_items} more ingredients to make another #{item_to_make}."
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

# #  Reflection
# On your own, add a commented reflection section to your gps.rb file. Answer the following questions in your reflection:
# • What did you learn about making code readable by working on this challenge?

# During the challenge, it was extremely frustrating to figure out what exactly was going on with the code we were made to analyze.
# The way in which the hash was being iterated through was convoluted. Half-way through the exercise, the thought hit me that I 
# would not want to work with a programmer that wrote code in such a way. Making code readable is essential to be able to collaborate
# with others on projects.

# • Did you learn any new methods? What did you learn about them?

# I learned about the .has_key? method, which iterates through a hash, finds a key one is looking for and returns the value of
# said key.

# • What did you learn about accessing data in hashes?

# I learned that one can access data in hashes through boolean methods which compare equality. That was completely new to me!

# • What concepts were solidified when working through this challenge?

# In this challenge I gained a much more firm grasp on iterating through hashes as well as the way error messages work.

# In so far as hashes, I learned a new way to iterate through hashes, through boolean statements as well as the .has_key? method.

# Keeping the "raise ArgumentError.new" message within the first boolean method was important for Ruby itself not to return an error. 
# It's important to foresee when and where user's input could cause an error message and to account for it.

# I also learned that I get way too flustered when something goes wrong, which makes me a very inefficient programmer. There was an 
# issue which caused me to be late to my GPS, and this made me almost incapable of concentrating, making the task far more difficult 
# than it would have been. I was not understanding as fast as I normally would. During my reflection, after my pair had left, looking 
# at the problem with more calm, it all seems so clear and simple. I need to learn to keep my composure when things go wrong, remain 
# or regain calm, and analyze the problem without being distracted.
