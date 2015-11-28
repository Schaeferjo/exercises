# Programming exercise 6.10: Blocks
#####################################################################################
# Tutorial: http://ruby-for-beginners.rubymonstas.org/built_in_classes/symbols.html #
# Tutorial: http://ruby-for-beginners.rubymonstas.org/built_in_classes/hashes.html  #
#####################################################################################

# We have skipped over two very relevant basic data types in ruby:
# Symbols and Hashes

# ============= Symbols ===============

# Symbols are a very specific concept in ruby
# Their purpose is to label things
# A symbol is written like a word preceded by a colon:
:word

# It is somehow similar to a string but it's mere value already identifies it
puts "Do the two strings 'word' and 'word' have equal values?"
puts "word" == "word"
puts "Do the two symbols :word and :word have equal values?"
puts :word == :word

puts "Are the two strings 'word' and 'word' the same object?"
puts "word".equal?("word")
puts "Are the two symbols :word and :word the same object?"
puts :word.equal?(:word)

# Confused? Good! :D
# Don't worry. No one understands symbols at the very first time.
# If you are from the java world then you might find symbols similar to 'enums'.

# It's really hard to explain the meaning of symbols to absolute beginners
# 1. Best explanation: Our tutorial
# "Symbols are unique identifiers that are considered code, not data"
# 2. Second best explanation: Tags or Labels
# Use symbols if you want to talk about "Who?" instead of "What"?
# 3. Lengthy explanation including implementation details:
# http://stackoverflow.com/q/16621073
puts # ------------ print empty line -------------

# ============= Hashes ===============

# A 'Hash' in ruby is a set of key-value pairs - a special data structure
# In other languages it may have the name 'Dictionary' or 'Map'
# Wikipedia calls it 'associative array'
# Wikipedia: https://en.wikipedia.org/wiki/Associative_array

# A Hash is written with curly braces
a_hash = {"I am" => "a hash"}
# Here the String "I am" is the key for the String "a hash" 


# Because a Hash is also called dictionary in programming languages like Java
# We can make an actual english dictionary with more than one key-value pair
english_dictionary = {
  "hello" => "Hallo",
  "goodbye" => "Auf Wiedersehen",
  "thanks" => "Danke"
}
# Everything between '{' and '}' belongs to the hash

# We can add more key-value pairs to the hash like so:
english_dictionary["sorry"] = "Entschuldigung"
# And we can retrieve words from a hash like this:
puts "return value of 'english_dictionary[\"thanks\"] is"
puts english_dictionary["thanks"]
puts # ------------ print empty line -------------

# The whole point about hashes is that you don't need to remember an element
# in a collection by it's position (like in a list) but you can remember the
# element with a so called 'key'

# E.g consider this example with two lists
english_words = ["hello", "goodbye", "thanks"]
german_words = ["Hallo", "Danke", "Auf Wiedersehen"]
# We made a little mistake here: The order of corresponding words doesn't match

puts "There is a mistake in the following translations"
english_words.each_with_index do |word, index|
  puts "The german translation of '#{word}' is : #{german_words[index]}"
end
# TODO: change the code above, so that the right translation appears on the screen
# Do you see that this is a possible source for errors?
puts # ------------ print empty line -------------



# TODO: Let's consider this example
sentence = "Please translate this sentence"
# TODO: Add more key-value pairs to the english_dictionary!
# TODO: At least the translations for 'Please', 'translate', 'this' and 'sentence'
# NOTE: If you use the infinitive for 'translate' no problem!
# NOTE: This is only a good showcase why translation of natural languages
#       is a tough problem
# ------------ add more key-value pairs to 'english_dictionary' here ----------

# We can split a string into a list of strings with 'split'
words_of_sentence = sentence.split(" ")
puts "The sentence split into words looks like this"
p words_of_sentence
# We can iterate over a list with 'collect' and return a new list
# NOTE: This time, the curly braces indicate a block
translated_words = words_of_sentence.collect {|word| english_dictionary[word]}
puts "The list of translated words looks like this"
p translated_words
# We can combine a list of strings into one string with 'join'
puts "The final sentence looks like this"
puts translated_words.join(" ")

puts # ------------ print empty line -------------

# Now why do we introduce symbols and hashes in one example?
# Because symbols are often used as keys for a hash
# Remember that we said, use symbols when you talk about "Who" instead of"What"?

hash_with_symbols = {
  :a_symbol => "is just perfect",
  :as_a_key => "for a value"
}
# By the way: You can store any object in a hash, not just Strings
hash_with_symbols[:a_number] = 42
hash_with_symbols[:a_list] = ["one", 2, 3.0, :four]
hash_with_symbols[:another_hash] = {:foo => :bar}
puts "The 'hash_with_symbols' contains"
p hash_with_symbols


# TODO: create a command line form for address details
address_details = {
  :name => nil,
  :street => nil,
  :zip_code => nil,
  :city => nil,
}

puts "Your address please!"
address_details.keys.each do |key|
  puts "Please type in your #{key.capitalize}"
  # TODO: access the user input with 'gets'
  # TODO: save the input the corresponding key in the 'address_details'
  # NOTE: we iterate over all keys in this loop, so you've got the 'key' ;)
end

puts # ------------ print empty line -------------
puts "Great! We will send your package to:"
address_details.each do |key, value|
  puts "#{key.capitalize}: #{value}"
end

