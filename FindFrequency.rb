#Find frequency of a string in a given sentence
def find_frequency(sentence,word)
	sentence.downcase.split.count(word.downcase)
end

sent = "Ruby is the best language in the world"
puts "Frequency of 'the' in \"#{sent}\" is #{find_frequency(sent,'the')}"
