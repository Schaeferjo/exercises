# Programming exercise 5.6: Writing methods
############################################################################
# Tutorial: http://ruby-for-beginners.rubymonstas.org/writing_methods.html #
############################################################################
puts # ------------ print empty line -------------

# Methods are like a reusable piece of code
# They consist of four things:
# 1. A name
# 2. Some arguments, representing the input
# 3. A block of code
# 4. A return value, representing the output
def print_something
  puts "Aloha!"
end
# Everything between 'def' and 'end' belongs to the method definition

# Just definining the method doesn't execute the code
# We have to call the method in order to run it
puts "If we call the method 'print_something' we see:"
print_something
puts # ------------ print empty line -------------


# Every method has a return value, which we can use
def return_a_string
  # Usually, the return value is the value of the last evaluated line
  "I am the return value"
end

puts "So this is the return value of the method 'return_a_string'"
puts return_a_string
puts # ------------ print empty line -------------
# Can you see that we have to call 'puts' in order to show the value on the screen?
# Here we care about the return value of the method
# If we just call the method without passing it to 'puts' we don't see anything
return_a_string # this doesn't print anything



# Here you can see an explicit 'return' statement in the method
# Calling 'return' immediately leaves the method and returns the expression right next to it
def method_with_explicit_return_statement
  return "I am the string returned by the return statement"
  "I won't get returned, because you leave the method with 'return'"
end

puts "Here is the explicit return value:"
puts method_with_explicit_return_statement
puts # ------------ print empty line -------------

# Methods can have arguments (input)
def say_hello_to(something)
  puts "Hello " + something
  # By the way: 'puts' returns nil
  # It is the last line of the method so we return nil here
end

say_hello_to("YOU!")
puts # ------------ print empty line -------------


# Methods can have arguments
def introduce_two_people(person1, person2)
  # Arguments are like local variables
  # So we can think that 'person1' and 'person2' are just names
  # for objects that we pass to the method
	puts "Hello " + person1 + " this is " + person2 + "."
	puts "Hello " + person2 + " this is " + person1 + "."
end
introduce_two_people("Wisal", "Annika")


# TODO: define a method that adds two numbers
def add(number1, number2)
	# TODO: what comes in here?
  # Remember: you can add numbers with a plus sign, e.g. 1 + 2
end
# TODO: this should print 3 on the screen
puts "If we call the method add(1,2) we see:"
puts add(1,2)

# TODO: What happens if you call the method add without arguments?
# TODO: Do you understand why?


# TODO: Define a method with a name that you choose on your own ;)
# TODO: The method should expect some arguments and does something interesting
