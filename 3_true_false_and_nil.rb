# Programming exercise 5.3: Booleans and Nil
############################################################################################
# Tutorial: http://ruby-for-beginners.rubymonstas.org/built_in_classes/true_false_nil.html #
############################################################################################


puts # ------------ print empty line -------------
# Some methods return a so called boolean value, e.g.
puts "Asking 5.is_a?(Object) returns the value 'true' because the number 5 is an Object"
puts 5.is_a?(Object)
puts "But the number 5 is not a String, so asking 5.is_a?(String) returns"
puts 5.is_a?(String)
puts "But if you ask me, this String, right here:"
puts "But if you ask me, this String, right here:".is_a?(String)
# Both 'true' and 'false' are protected keywords in ruby, so you can't use them as a variable name
# This will lead to an error
# true = "Something"
puts # ------------ print empty line -------------


# There is another special value 'nil' which represents just nothing ;)
# Sometimes a method returns nil, e.g. 'index' gives you the first position of a character
puts "The first occurrence of the character 'e' in 'Auslegeware' is at position"
puts "Auslegeware".index("e")
puts "Of course we start counting at 0, like this: 0,1,2,3,4... "
# But what happens if we search for a character which is not in the String?
puts "There is no character 'Z' in 'Auslegeware' so 'Auslegeware'.index('Z') will give us"
p "Auslegeware".index("Z")
puts # ------------ print empty line -------------
puts # ------------ print empty line -------------

puts "By the way, I've used the method 'p' to print the value 'nil'"
puts "Because if you use 'puts' with nil you see:"
puts nil
puts "An empty line! Does that make sense? You simply print nothing! :)"

# TODO: Write a philosophical essay about the meaning of truth and nothing in programming languages
