# Programming exercise 5.9: Object scope
#################################################################################
# Tutorial: http://ruby-for-beginners.rubymonstas.org/writing_classes/self.html #
#################################################################################

class Person
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def greet(other_person)
    #This local variable shadows the method 'name'
    name = "Not my name"
    # TODO: We have a name clash betweeen a local variable and a method name
    # TODO: How can we be specific?
    # TODO :How can we call a method on the current object?
    puts "Hi " + other_person.name + "! My name is " + name + "."
  end
end

person = Person.new("Alice")
friend = Person.new("Bob")
person.greet(friend)
# What do we have to write in order to let Alice tell her name to her friend Bob?
# Or vice verso?
friend.greet(person)

