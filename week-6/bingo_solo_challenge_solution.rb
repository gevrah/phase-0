# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [7] hours on this challenge.


# Release 0: Pseudocode

# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Method 1:
  # select random string from [b, i, n, g, o] 
  # select random number from [1-100]

# Check the called column for the number called.
  # Method 2:
  # index letters

# If the number is in the column, replace with an 'x'
  # Method 3:
  # replace matched column string/number with X


# Display the board to the console (prettily)
  # Method 4:
  # Output the X'd column array to the board

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def generate_random
#     @letter = ['B', 'I', 'N', 'G', 'O'].sample
#     @random_number = rand(1..100)
#     # @letter = 'B'
#     # @random_number = 47
#   end

#   def check_column
#     if @letter == 'B'
#       @position = 0
#     elsif @letter == 'I'
#       @position = 1
#     elsif @letter == 'N'
#       @position = 2
#     elsif @letter == 'G'
#       @position = 3
#     else @letter == 'O'
#       @position = 4
#     end
#   end

#   def x_matched_number

#     case 
    
#     when @position == 0
#       @bingo_board.each do |element|
#         if element[0] == @random_number
#           element[0] = 'X'
#         end
#       end

#     when @position == 1
#       @bingo_board.each do |element|
#         if element[1] == @random_number
#           element[1] = 'X'
#         end
#       end

#     when @position == 2
#       @bingo_board.each do |element|
#         if element[2] == @random_number
#           element[2] = 'X'
#         end
#       end

#     when @position == 3
#       @bingo_board.each do |element|
#         if element[3] == @random_number
#           element[3] = 'X'
#         end
#       end

#   when @position == 4
#       @bingo_board.each do |element|
#         if element[4] == @random_number
#           element[4] = 'X'
#         end
#       end
#   end
# end

# def print_pretty_board
#   p @bingo_board[0]
#   p @bingo_board[1]
#   p @bingo_board[2]
#   p @bingo_board[3]
#   p @bingo_board[4]
#   end

# end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def generate_random
    @letter = ['B', 'I', 'N', 'G', 'O'].sample
    @random_number = rand(1..100)
    # @letter = 'B'
    # @random_number = 47
  end

  def check_column
   # @position = Hash[@letter.map.with_index.to_a]
    if @letter == 'B'
      @position = 0
    elsif @letter == 'I'
      @position = 1
    elsif @letter == 'N'
      @position = 2
    elsif @letter == 'G'
      @position = 3
    else @letter == 'O'
      @position = 4
    end
  end

  def x_matched_number

    case 
    
    when @position == 0
      @bingo_board.each do |element|
        if element[0] == @random_number
          element[0] = 'X'
        end
      end

    when @position == 1
      @bingo_board.each do |element|
        if element[1] == @random_number
          element[1] = 'X'
        end
      end

    when @position == 2
      @bingo_board.each do |element|
        if element[2] == @random_number
          element[2] = 'X'
        end
      end

    when @position == 3
      @bingo_board.each do |element|
        if element[3] == @random_number
          element[3] = 'X'
        end
      end

  when @position == 4
      @bingo_board.each do |element|
        if element[4] == @random_number
          element[4] = 'X'
        end
      end
  end
end

def print_board
  p "Here's your bingo results, X's are matches"
  p @bingo_board[0]
  p @bingo_board[1]
  p @bingo_board[2]
  p @bingo_board[3]
  p @bingo_board[4]
  end

end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

test = BingoBoard.new(board)
test.generate_random
test.check_column
test.x_matched_number
test.print_board

#Reflection

# • How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# Pseudocoding for this challenge was as challenging as usual. I have a difficult time understanding 
# which methods will be necessary to create a successful program, so it tends to feel like I'm blindly
 # reaching for answers. My pseudocoding style is perhaps not detailed enough, though it does help me
  # in thinking of the sorts of methods that I'll need to create in order to complete these challenges.

# • What are the benefits of using a class for this challenge?
# The benefits of using a class for this challenge are that it allows one to access instance variables 
# across various methods.

# • How can you access coordinates in a nested array?
# It's possible to use nested loops to iterate through nested arrays.

# • What methods did you use to access and modify the array?
# I didn't really use too many methods, I just used boolean statements case expressions and WHEN in order
 # to access the array.

# • Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
# I didn't learn any new methods, but I attempted to apply a combination of methods that I had not done 
# before in order to create a hash of B I N G O, though I was not successful. The combo of methods I attempted to use is:
# Hash[@letter.map.with_index.to_a]
# I will have to get help from an instructor in order to better understand why it did not work as I intended.

# • How did you determine what should be an instance variable versus a local variable?
# Variables that needed to be accessed across classes I made into instance variables, whereas variables that
 # only needed to be accessed within methods, I made into local variables.

# • What do you feel is most improved in your refactored solution?
# The only thing I really added was a message to my output, as I was unable to implement the code I wanted to
 # use to improve my solution.


