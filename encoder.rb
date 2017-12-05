#grades = { "Jane Doe" => 10, "Jim Doe" => 6 }
#puts grades["Jane Doe"] # => 0

puts "Type your message in lower case letters without punctuation: " #code only works with lower case
message = gets.chomp 
split_letters = message.split('') #divides message into individual letters and spaces
p split_letters.count #counts total number of letters and spaces
count=0
(split_letters.count).times do #loops program the number of letters and spaces

letter = split_letters[count] #letter variavle contains an individual letter depenndent on the value of count
count = count + 1
#puts letter
#puts split_letters.length


hash1 = {"a" => 1, "b" => 2, "c" =>3, "d" => 4, "e" => 5, "f" => 6, "g" =>7, "h" => 8,
"i" => 9, "j" => 10, "k" =>11, "l" => 12, "m" => 13, "n" => 14, "o" =>15, "p" => 16,
"q" => 17, "r" => 18, "s" =>19, "t" => 20, "u" => 21, "v" => 22, "w" =>23, "x" => 24,
"y" => 25, "z" => 26, " " => 27} #establishes a hash relating a, b c with 1, 2, 3


letter_number = hash1[letter] #Letter number contains the number of each letter in the message 

if letter_number == 27
	then coded_letter = 27 # letter_number 27 refers to the space and is maintained as such
elsif	
coded_letter = letter_number + 13 #adds 13 to letternumber to encode the letter NOTE that any positive number could be added
if coded_letter > 26 
	coded_letter = coded_letter %26 #returns the remainder if coded letter is >26
end	
end

hash3 = hash1.invert #hash3 inverts hash1 so we can extract a letter from a number input

encoded_letter = hash3[coded_letter]
print letter, " ", encoded_letter #prints initial message and spaces and encoded letter vertically
puts
end

