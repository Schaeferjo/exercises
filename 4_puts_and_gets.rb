# Programming exercise 5.4: 'puts' and 'gets'
###########################################################################################################
# StackOverflow: http://stackoverflow.com/questions/5018633/what-is-the-difference-between-print-and-puts #
# StackOverflow: http://stackoverflow.com/questions/6556280/read-input-from-console-in-ruby               #
# Ruby-Doc Kernel#puts:      http://ruby-doc.org/core-2.2.3/Kernel.html # method-i-puts                   #
# Ruby-Doc Kernel#gets:      http://ruby-doc.org/core-2.2.3/Kernel.html # method-i-gets                   #
# Ruby-Doc String#strip:     http://ruby-doc.org/core-2.2.0/String.html#method-i-strip                    #
###########################################################################################################

# Although not covered in depth by our tutorial I want to talk a little about the methods
# that print something on the screen and also how to get user input from the screen

# The methods 'puts' prints a string on the screen
puts "So for example, this string gets printed on the screen"

# There are several other methods how to print something on the screen, e.g.
print "The method 'print' prints "
print "without a line break "
print "at the end. "
puts # ------------ print empty line -------------
print "Can you see the difference to 'puts'? "
print "Of course we can print a newline character like so: \n"
print "\n" # ------------ print another empty line -------------



# The methods 'gets' waits for user input and returns another string
# However, 'gets' also captures the line break at the end
puts "Dear user, please enter some text and hit return ;)"
user_input = gets
puts "Here comes the user input: " + user_input + " but this is on a new line .."
# So we have to call a method on the string to get rid of the new line
# We can use either 'strip' or 'chomp', in our example the difference doesn't matter
puts "Here comes the user input: " + user_input.strip + " without a new line .."

# We can also call 'strip' on the return value of 'gets' directly
puts "Please input something else:"
new_user_input = gets.strip
puts "The new user input " + new_user_input + " has no line break at the end - got that? :)"

puts "Press enter to see how all the following words are separated by a line break"
gets
# Whitespaces are invisible characters
# So to make them visible in the source code we use the backslash together with a character
# E.g. this \n means a line break in the string
puts "These\nwords\nare\nall\non\na\nnew\nline"


# TODO: here are some strings with trailing newlines
string = "The quick brown fox \n"
string2 = "Jumps over the lazy dog"

# TODO: Put these strings together without a newline!
puts "Ready to see the output of your exercise?"
gets
puts string + string2
# TODO: What do you have to call on the first string to remove the line break at the end?
