# Programming exercise 5.5: Arrays
#######################################################################################
# Tutorial: http://ruby-for-beginners.rubymonstas.org/built_in_classes/arrays.html    #
#######################################################################################


# Arrays or Lists are special objects to group many other objects into one
# Arrays are written with square brackets
empty_array = []
puts "This is how an empty array looks like"
p empty_array
puts # ------------ print empty line -------------

# Values in arrays are separated with commas
puts "Array with some elements"
array = [1, "two", 3.0, nil, true]
p array
puts # ------------ print empty line -------------


# You can access an element at a certain position like so
puts "The first element is"
p array[0] # We always start counting with 0
puts # ------------ print empty line -------------

# You can overwrite an item of an array
puts "The array before we change it"
p array
array[0] = "one" # We always start counting with 0
puts "The array after our change"
p array
puts # ------------ print empty line -------------

# And finally we can add new items to the array
puts "The array before we add something"
p array
array << "a new item"
puts "The array after we added something"
p array
puts # ------------ print empty line -------------

# Iterating over an array:
# If you want to do something with each element, you can call 'each' on the array
# This is a special method that expects a so called 'block'
# The block is the code between 'do' and 'end'
# A block can take some arguments, written between the pipe symbols |arg1, arg2, ...|
# In this example, 'each' expects a block with just one argument |item|
# This way, the block will be applied on every item in the list
puts "Now we're calling 'p' on every item in our array"
array.each do |item|
  p item # here, item is a local variable which represents an item in the list
end

# TODO: Here is an array with some numbers
numbers = [1,2,3,5,7,11,13]
# TODO: Multiply every number in the list with 2 and show it on the screen
# TODO: ----------------- your code here -------------------------
# TODO: Now instead of printing the elements, create an empty array
# TODO: And then multiply every item of 'numbers' by 2 and add it to the new array
# TODO: Print the new array
# TODO: ----------------- your code here -------------------------


