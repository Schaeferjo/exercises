# Programming exercise 5.8: Writing Classes - part 2
############################################################################
# Tutorial: http://ruby-for-beginners.rubymonstas.org/objects.html         #
# Tutorial: http://ruby-for-beginners.rubymonstas.org/writing_classes.html #
############################################################################

class Sheep
	def initialize
		@hungry = 3
		@tired = true
	end

	def wake_up
		@tired = false
		puts "Yaaaawwn. Good morning! ;)"
	end

	def sleeping?
		@tired
	end

	def hungry?
		@hungry > 0
	end

	def eat_grass
		if sleeping?
			puts "I'm still asleep! You have to wake me up!"
		else

			if hungry?
				puts "Mmmh, yummy grass!"
				@hungry = @hungry - 1
			end

			if hungry?
				puts "I'm still hungry! I want to eat more grass."
			else
				puts "Now I'm full!"
			end
		end
	end
end

# This is just another exercise on object oriented programming
# Here we have to call certan methods on the object to reach our goal
# You don't have to change the class' definition

# Okay, so we are creating a new instance of class sheep here
sheep = Sheep.new
# TODO: Feed the sheep until it's full!
# TODO: If we call sheep.eat_grass, the sheep will tell us it's still sleeping
# TODO: What method do we have to call on the sheep first??
sheep.eat_grass
sheep.eat_grass
# TODO: So, what methods and in what order and how often do we have to call them?

# TODO: Can you imagine how the objects state changes when you call certain methods?
# TODO: Call 'p sheep' between your steps
# TODO: So you can see how the instance variables of the sheep change
