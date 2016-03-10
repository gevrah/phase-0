#pseudocode
# input: 
# -list of students
# steps: 
#  1. create array of list of students
#  2. separate list of students into 4 or 5 person groups based on value
# output: 
# -accountability groups

# Solution:

list = "Aarthi Gurusami
Abid Ramay
Adam Zmudzinski
Alec Hendrickson
Alex Wen
Alicia Briceland
Allison paul
Andrey Slonski
Anna Lansfjord
Ben Sanecki
Ben Flores
Buck Melton
Caitlin Hoffman
Carlos Gonzalez
Chand
Ché Sanders
Chris Henderson
Chris Lamkin
Christyn Budzyna
Dan Park
David Ramirez
David Tao
David Walden
Bill Deng
Denny Jovic
Dexter Moran
Diana Ozemebhoya Eromosele
Dominick Lombardo
Elan Kvitko
Elizabeth Alexander
Elizabeth Brown
Ena Bek
Esther Leytush
Evan Druce
Frank Lam
Gabo
Jack Thatcher
Jason Milfred
John Colella
Jonathan Kaplan
Kelsonic
Kristal Lam
Kunal
Leland Meiners
Liam Binell
Lisa Buch
Lisa Dannewitz
Mila
Mohamed Monekata
Parker Smathers
Patrick DeWitte
Renan Martins
Riley
Robin Soubry
Samantha Holmes
Scott Southard
Shaun R Sweet
Shin Wang
Sibel Ergener
Simon Thomas
Talal Talhouk
Ted Bogin
Traci Fong
Victoria Solorzano"

students = list.split("\n").each_slice(1).map{|a|a.join " "}

# def divide(group)
# 	if group.length/5
# 		return group.each_slice(5).to_a
# 	end
# end

# p divide(students)

# Refactor:
def divide(group)
	if group.length/5
		return group.shuffle.each_slice(5).to_a
	end
end

p divide(students)

# # Release 6: Reflect
# What was the most interesting and most difficult part of this challenge?
	# The most interesting and difficult part of this challenge was figuring out
	# how to input an excel column/row list into Ruby, so as not to have to write
	# out each individual string. This didn't really save me any time, but it was fun to learn.
# Do you feel you are improving in your ability to write pseudocode and break the problem down?
	# Yes, I'm getting better at it. I did GPS 2.2 early in the week, and it kicked my ass.
	# this, not so much.
# Was your approach for automating this task a good solution? What could have made it even better?
	# My approach is simple and it worked pretty much on the first try. I'm happy with it.
# What data structure did you decide to store the accountability groups in and why?
	# I chose an array, as this was the most straight-forward, easy way to get it done.
# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
	# I added a .shuffle method to my solution, which scrambled the groups so that they
	# would not be divided by alphabetical order.