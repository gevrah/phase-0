# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [3] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => 8
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => unexpected '=', expected $end
# 5. Where is the error in the code?
# => The interpreter did not expect an equal sign between "I'm going home" and cartmans_phrase
# 6. Why did the interpreter give you this error?
# => Variables must be to the left of the equal sign with the operators on the right side.

# --- error -------------------------------------------------------

south_park = "cool"

# 1. What is the line number where the error occurs?
# => 170
# 2. What is the type of error message?
# => syntax error
# 3. What additional information does the interpreter provide about this type of error?
# => unexpected end-of-input, expecting keyword_end
# 4. Where is the error in the code?
# => after hte last letter of the last comment on line 170
# 5. Why did the interpreter give you this error?
# => the interpreter is expecting keyword end

# --- error -------------------------------------------------------

def cartman()
end

# 1. What is the line number where the error occurs?
# => 50
# 2. What is the type of error message?
# => <main>''
# 3. What additional information does the interpreter provide about this type of error?
# => undefined method 'cartman' for main:Object (NoMethodError)
# 4. Where is the error in the code?
# => In line 51 where one needs to input def
# 5. Why did the interpreter give you this error?
# => the function needed to have the method defined.
#

# --- error -------------------------------------------------------

def cartmans_phrase(defensive_message)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => 67
# 2. What is the type of error message?
# => <main> though this is unclear.
# 3. What additional information does the interpreter provide about this type of error?
# => Wrong number of arguments.
# 4. Where is the error in the code?
# => in the main part of the method.
# 5. Why did the interpreter give you this error?
# => the interpreter gave me this error because the method's argument was not defined.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says('fuck you!')

# 1. What is the line number where the error occurs?
# => 86
# 2. What is the type of error message?
# => Wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter doesn't appear to have provided additional information.
# 4. Where is the error in the code?
# => The error is in <main>
# 5. Why did the interpreter give you this error?
# => Because the method was not given an operator.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'lie1')

# 1. What is the line number where the error occurs?
# => 107
# 2. What is the type of error message?
# =>  wrong numbe of arguments
# 3. What additional information does the interpreter provide about this type of error?
# => doesn't seem to provide additional information.
# 4. Where is the error in the code?
# => in the <main> part of the method.
# 5. Why did the interpreter give you this error?
# => The second argument for cartmans_lie was not input.

# --- error -------------------------------------------------------

puts "Respect my authoritay!" *  5

# 1. What is the line number where the error occurs?
# => 126
# 2. What is the type of error message?
# => String can't be coerced into Fixnum
# 3. What additional information does the interpreter provide about this type of error?
# => No additional info is provided
# 4. Where is the error in the code?
# => in the main part of method
# 5. Why did the interpreter give you this error?
# => The integer needs to be to the right of the string.	 

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/1


# 1. What is the line number where the error occurs?
# => 141
# 2. What is the type of error message?
# => divided by 0
# 3. What additional information does the interpreter provide about this type of error?
# => Zero Division Error
# 4. Where is the error in the code?
# => in the main part of the method
# 5. Why did the interpreter give you this error?
# => the argument was divided by 0

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => 157
# 2. What is the type of error message?
# => require_relative: cannot load such file
# 3. What additional information does the interpreter provide about this type of error?
# => The locaton of hte file and (LoadError)
# 4. Where is the error in the code?
# => In the main part of the argument
# 5. Why did the interpreter give you this error?
# => There is no such md file in my computer.


# --- REFLECTION -------------------------------------------------------
# # Write your reflection below as a comment.
#  • Which error was the most difficult to read?

# The errors in which additional information seemed not to be available were hardest, since they seemed to just repeat the type of error message.

# • How did you figure out what the issue with the error was?

# I looked at the code and analyzed it to make sure that it was properly formatted.

# • Were you able to determine why each error message happened based on the code?

# Yes I was. 

# • When you encounter errors in your future code, what process will you follow to help you debug?

# I will analyze the error messages and try to google more information on the particular error messages.