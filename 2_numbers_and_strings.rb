# Programming exercise 5.2: Numbers and Strings
#############################################################################################
# Tutorial Numbers: http://ruby-for-beginners.rubymonstas.org/built_in_classes/numbers.html #
# Tutorial Strings: http://ruby-for-beginners.rubymonstas.org/built_in_classes/numbers.html #
#############################################################################################

# So first of all: Don't worry about this "strange #{some_ruby_code} syntax"
# It is just a shorthand for "strange " + some_ruby_code + " syntax"

# In ruby, numbers are objects like everything else
puts "Is '5' an object?"
puts 5.is_a?(Object)
puts

# Like any other object, numbers have methods
puts "Is 5.zero?"
puts 5.zero?
puts "Is 0.zero?"
puts 0.zero?
puts

# So we can add two numbers and remember the result with the variable 'expression1'
expression1 = 2 + 5
puts "The result of the expression 2 + 5 is:"
puts expression1

# But if we add two numbers in double quotes
expression2 = "2" + "5"
puts "The result of the expression \"2\" + \"5\" is:"
puts expression2
# TODO: Can you explain why?
puts "Why?"
puts


# TODO: Does this help?
puts "If we call \"5\".class, we get"
puts "5".class

# TODO: Does this help?
puts "If we call 5.class, we get "
puts 5.class
