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
    name = @name
    # TODO: We have a name clash betweeen a local variable and a method name
    # TODO: How can we be specific?
    # => Indem innerhalb der Methode greet nicht der Wert "name" verwendet wird,
    # da dieser Wert außerhalb definiert wurde und somit übernommen wird.
    # TODO :How can we call a method on the current object?
    # => Umbenennen, da es sonst zu einer Nameskollision kommt?!
    puts "Hi " + other_person.name + "! My name is " + name + "."
  end
end

person = Person.new("Alice")
friend = Person.new("Bob")
person.greet(friend)
# TODO: What do we have to change in class Person above?
# => name = @name | Siehe Zeile 17
# TODO: We want to let Alice tell her actual name to her friend Bob!
# TODO  And vice versa
friend.greet(person)


# NOTE: The 'lookup' of identifiers is sometimes tricky
# NOTE: An identifier could be a local variable or a method
# NOTE: In the above example it makes the code even more readable to use 'self'
# NOTE: 'self' is the keyword that always refers to the current object
# NOTE: We call that an 'explicit receiver', sth. on which we call a method (sth.method)

# NOTE: Keywords can never be used as variable names
# NOTE: Do you want to try it out?
# TODO: Uncomment the following lines of code individually and see what happens
# => Diese Begriffe können nicht umbenannt werden, da sie zur Ruby-Syntax gehören.
#self = "Self"
#true = false
#nil = 0
