# Programming exercise 6.10: Blocks
#####################################################################################
# Tutorial: http://ruby-for-beginners.rubymonstas.org/built_in_classes/symbols.html #
# Tutorial: http://ruby-for-beginners.rubymonstas.org/built_in_classes/hashes.html  #
#####################################################################################

# We have skipped over two very relevant basic data types in ruby:
# Symbols and Hashes

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



# A 'Hash' in ruby is a set of key-value pairs - a special data structure
# In other languages it may have the name 'Dictionary' or 'Map'
# Wikipedia calls it 'associative array'
# Wikipedia: https://en.wikipedia.org/wiki/Associative_array
