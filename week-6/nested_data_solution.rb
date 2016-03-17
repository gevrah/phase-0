# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]] ]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |index_item|
  if index_item.is_a?(Array)
    index_item.map! { |x| x += 5 }
  else index_item += 5
  end
end
p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |index_item|
  if index_item.is_a?(Array)
    index_item.map! do |inner_array|
      if inner_array.is_a?(Array)
          inner_array.map! { |inner_inner_array| inner_inner_array << "ly" }
      else inner_array << "ly"   
      end  
    end  
  else index_item << "ly"
  end
end

p startup_names


# Reflection:
# What are some general rules you can apply to nested arrays?
# Nested arrays, or multidimensional arrays, are not as 
# straightforward to access as one-dimensional arrays.

# What are some ways you can iterate over nested arrays?
# By using [ ] to specify the specific location within the 
# array one wants to access. Another way is by using 
# the method .is_a?(Array) within a boolean statement to
# access arrays within arrays.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# I learned about .is_a? in order to test whether
# there was an array within an array. What's
# neat is that one is able to use .is_a? within
# a .is_a? to see if there is an array within an
# array. Trippy.



