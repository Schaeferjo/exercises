
puts "----------------"
sentence = "This is text text text text a "
single_word = sentence.split(" ")


different_words = {}
word_frequency = 1

single_word.each do |word|
  if different_words.has_key?(word) == false
    different_words[word] =  word_frequency
  else
    different_words[word] =  word_frequency
    word_frequency = word_frequency + 1
  end

end


#puts different_words.length.to_s + " unterschiedliche Wörter im Satz"
puts different_words
