# Programming exercise 5.7: Writing Classes - part 1
############################################################################
# Tutorial: http://ruby-for-beginners.rubymonstas.org/writing_classes.html #
############################################################################

class Person
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def rename(name)
    # TODO: what do we have to write here
  end
end


# We will learn in this small example that objects have state
# Every instance of a class has its own state

person = Person.new "Alice"
# So the person has got the name "Alice" initially
# The method 'new' calls internally the so called constructor 'initialize'
# Read about it here: http://ruby-doc.org/core-1.9.3/Class.html#method-i-new
# The 'initialize' method is where we set the initial name
puts "The person is called #{person.name}"

# But why doesn't this change anything??
person.rename "Bob"
puts "The new name for the person is #{person.name}"

# TODO: How can we change the code above to output the new name?
person.rename "Carl"
puts "Again, the new name for the person is #{person.name}"


person2 = Person.new "Carl"
# This second person is another instance of class 'Person'
# It has got its own state which is different from the first person
# Even if it has got the same name, it is not the same instance
puts "Do the two persons have the same name?"
puts person.name == person2.name
puts "Are the two persons the same object?"
puts person.equal?(person2)
# Does that make sense?


