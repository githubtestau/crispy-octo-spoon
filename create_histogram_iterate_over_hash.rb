# request input from the user
puts "Enter your text."
# capture user input and assign to variable 'words'
text = gets.chomp
# split and delimit words with a 'space' and assign to variable words
words = text.split(" ")
# create a new hash called frequencies with default value of 0
frequencies = Hash.new(0)
=begin
iterate over words to add each word to our frequencies hash, one at a time. This is why our default is 0. The first time we find the word, it will have a default value of 0 that we can increment up to 1. The action we want is to update the hash with a key equal to the word, then increment its value by 1. Each key will be frequencies[word], and we can increment using += 1.
=end
words.each {|word|frequencies[word] += 1}
# sorting the hash into words and count from smallest to largest by count. The .sort_by function returns an array of arrays. Store the result back into frequencies.
frequencies = frequencies.sort_by {|a, b| b}
# Use .reverse! on the array order so that the words with the largest counts are first.
frequencies.reverse!
# Writen as a single statement = better |*| frequencies.each { |word, frequency| puts word + " " + frequency.to_s } |*|
# Iterate over the array to print out each key-value pair to the console. The key and value separated by a space (" "). Note that we must first convert the value from a number to a string using .to_s before we can concatenate it.
frequencies.each do |word, count|
    puts word + " " + count.to_s
end
