# Programming exercise 5.10: Blocks
###################################################################
# Tutorial: http://ruby-for-beginners.rubymonstas.org/blocks.html #
###################################################################


# Our Tutorial says: "Blocks are one of the things programmers absolutely love about Ruby"
# And as a ruby developer I can conirm that!

# A block is like an anonymous method
# It has got input(arguments), some code and an output but no name - therefore we call it 'anonymous method'
# A block is always passed to a method call

# We have come across one example already:

5.times do |time|
  puts "It's the #{time+1} time that we enter the block"
end

# The block is everything between do ... end
# The arguments that are passed to the block are between the pipes ||
# So we have an argument |time| in this example

# A block is always passed to a method, which is 'times' in the last example

# There is an alternative syntax for blocks which is curly braces
3.times { puts "Hello from inside a block!" }



# Blocks can have return values like methods
# E.g. the method 'map' on an array runs the block on every item in the list and returns the resulting array
numbers_plus_three = [1,3,5,6,10].map {|number| number + 3 }
# We add 3 to every number in the list and assign the result to the variable 'numbers_plus_three'
p numbers_plus_three


puts # ------------ print empty line -------------
# TODO: Show only the odd numbers on the screen!
# NOTE:The method 'select' selects only items from an array, on which a block evaluates to 'true'
# NOTE: read http://ruby-doc.org/core-2.2.3/Enumerable.html#method-i-select
# NOTE: 'odd?' tells you if a number is odd or not
# NOTE: read http://ruby-doc.org/core-1.8.7/Integer.html#method-i-odd-3F
puts "All the odd numbers are"
puts [1,2,3,4,5,6,7] # what do we have to call on the array?




# TODO: Show the first string that includes 'woo'!
# NOTE:The method 'find' is very similar to 'select' but it only returns the first item
# NOTE: read http://ruby-doc.org/core-2.2.3/Enumerable.html#method-i-find
# NOTE: The method 'include?' tells you if a String includes another String
# NOTE: read http://ruby-doc.org/core-2.2.0/String.html#method-i-include-3F
puts "The first String that includes 'woo' is"
puts ["Ruby is cool", "Rubies in the woods", "Ruby Monstas"] # what do we have to call on the array?


