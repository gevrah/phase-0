# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

  
  # Method that takes three arguments
  def initialize(state_of_origin, population_density, population)
    # Below converts arguments into instance variables
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


  def virus_effects
    predicted_deaths
    speed_of_spread
  end



private
#This means that all methods defined below will be private methods.
#They cannot be accessed from outside of the class. Only methods within the class can use them.

=begin
Define method with two arguments
IF population_density is more than 200
  THEN the number of deaths is 0.4 * popluation rounded to the nearsest int
ELSIF the population_density etc etc.
...

print string with state and number_of_deaths variables (NO NEWLINE)
=end

#method defining the amount of predicted deaths based on three arguments
  # def predicted_deaths
  #   if @population_density >= 200
  #     number_of_deaths = (@population * 0.4).floor
  #   elsif @population_density >= 150
  #     number_of_deaths = (@population * 0.3).floor
  #   elsif @population_density >= 100
  #     number_of_deaths = (@population * 0.2).floor
  #   elsif @population_density >= 50
  #     number_of_deaths = (@population * 0.1).floor
  #   else
  #     number_of_deaths = (@population * 0.05).floor
  #   end

  #   # prints string: state will lose amount of people
  #   print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  # end

=begin
define method with two arguments
define speed variable and set equal to zero
IF population_density is more than 200
  THEN add .5 to speed
ELSIF population_density etc etc...
  ...

print string on same line with the speed variable
=end

#   def speed_of_spread #in months
#     speed = 0.0
#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end
    
#     puts " and will spread across the state in #{speed} months.\n\n"

#   end
# end


#REFACTORED VERSION
  def predicted_deaths
    if @population_density >= 200
      number_of_deaths_ratio = 0.4
    elsif @population_density >= 150
      number_of_deaths_ratio = 0.3
    elsif @population_density >= 100
      number_of_deaths_ratio = 0.2
    elsif @population_density >= 50
      number_of_deaths_ratio = 0.1
    else
      number_of_deaths_ratio = 0.05
    end
    print "#{@state} will lose #{(@population * number_of_deaths_ratio).floor} people in this outbreak"
  end

  def speed_of_spread #in months
    speed = 2.5
    until @population_density < 50
      speed -= (0.5)
      @population_density -= 50
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end
end


#=======================================================================

# DRIVER CODE


#Built in tests:

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

#Method to interate through each state
STATE_DATA.each do |state_name, state_info|
  state_name = VirusPredictor.new(state_name,state_info[:population_density],state_info[:population])
  state_name.virus_effects
end



#=======================================================================
# Reflection Section
=begin
• What are the differences between the two different hash syntaxes shown in the state_data file?
  • One uses a string as a key with a hash rocket "=>" as a key, while the other uses a symbol ":" as a key. 
  Using a symbol as a key for population_density and population_data is better since each instance of that object 
  is immutable and is the exact same object, so it stores the different values while using less memory/data.

• What does require_relative do? How is it different from require?
  • Require_relative loads a file relative to the file path that the calling file is on. Require loads files using 
  absolute paths, and can be used to load ruby gems and other files that have specific paths within Ruby.

• What are some ways to iterate through a hash?
  • It's possible to iterate through hashes through using enumerable methods, such as the .each method that we used in this challenge. 

• When refactoring virus_effects, what stood out to you about the variables, if anything?
  • We made our code more DRY by removing the repetitiveness of using variables that were not necessary. Since these variables were already
   instance variables, they could be used without within the class between methods without so much repetition. 
  • We also refactored the Boolean statements for the speed_of_spread method. Since there was a clear pattern of decreasing speed by 0.5 for 
  every 50 decrease in population_density.

• What concept did you most solidify in this challenge?
  • I solidified how to use a hash that interacts with a class, and whether it was possible to access the methods of a class outside of said class.
=end

