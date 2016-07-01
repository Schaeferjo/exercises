sentence = "This is is text text a text text this."
words = sentence.downcase.gsub(/[^a-z0-9\s]/i, '').split
different_words = {}

words.each { |word| different_words[word] = different_words[word].to_i + 1 }

puts "Es gibt #{different_words.length} unterschiedliche Wörter im Satz:"
sorted_word_frequencies = different_words.to_a.sort { |pair, another_pair| another_pair.last <=> pair.last }
p sorted_word_frequencies
sorted_word_frequencies = different_words.to_a.sort { |pair, another_pair| pair.first <=> another_pair.first }
p sorted_word_frequencies
different_words.each { |word, frequency| puts "#{frequency} x #{word}" }
