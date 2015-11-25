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

# NOTE:If you are confused about the usage of 'p' and 'puts' you can read about it in our tutorial 
# NOTE: http://ruby-for-beginners.rubymonstas.org/writing_methods/printing.html
puts "By the way, I've used the method 'p' to print \"Auslegeware\".index(\"Z\")"
puts "It's because if you 'puts nil' then you see:"
puts nil
puts # ------------ print empty line -------------

puts "An empty line! Does that make sense? You simply print nothing! :)"
puts "But if you use 'p nil' then you see"
p nil
puts # ------------ print empty line -------------

puts "The literal description of the value 'nil' which a String consisting of the characters n-i-l"
puts "Calling 'p something' is equivalent to 'puts something.inspect'"
puts nil.inspect
puts "See?"
puts # ------------ print empty line -------------

puts "One more thing: In ruby (almost) everything is an object, including 'nil', 'true' and 'false'"
puts "Therefore we can call methods on these objects, e.g. \"nil.nil?\""
puts nil.nil?
puts "Isn't that cool? We can ask the pure void: \"Are you nil?\" and it will tell us: \"Yes.\""
puts # ------------ print empty line -------------
puts "This is just one reason why ruby is awesome"
puts "In other programming languages you have to *compare* your object with nil"
some_object = nil
puts some_object == nil # NOTE: The double equal sign here


# TODO: Write a philosophical essay about the meaning of the void (nothingness) in programming languages
# TODO: Express the meaning of truth and untruth from a development perspective in a public debate
