sentence = "This is is text text a text text"
single_word = sentence.split(" ")
different_words = {}

single_word.each do |word|
  if different_words.has_key?(word) == false
    different_words[word] =  1
    else
    different_words[word] = different_words[word] + 1
  end
end

puts different_words.length.to_s + " unterschiedliche Wörter im Satz:"
different_words.each do |key, value|
    puts value.to_s + " x " + key
end
