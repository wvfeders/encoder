puts "Do you want to encode or decode?"
code_type = gets.chomp  #User has to input whether the program should encode or decode

puts "What is the number of letters used to offset the message (i. e. 5,8,13 etc)?"
letter_offset = Integer(gets.chomp) #user has to provide the number of letters to offset to create or decipher the code

if code_type == "decode"
	letter_offset = -1 * letter_offset #the sign of the letter_offset value is reversed if program is decoding 
end	

puts code_type, letter_offset #checks code_type and offset


puts "Type your message in lower case letters without punctuation: " #code only works with lower case
message = gets.chomp 
split_letters = message.split('') #divides message into individual letters and spaces
p split_letters.count #counts total number of letters and spaces
count=0
(split_letters.count).times do #loops program the number of letters and spaces

letter = split_letters[count] #letter variable contains an individual letter dependent on the value of count
count = count + 1 #increments the counter


hash1 = {"a" => 1, "b" => 2, "c" =>3, "d" => 4, "e" => 5, "f" => 6, "g" => 7, "h" => 8,
"i" => 9, "j" => 10, "k" =>11, "l" => 12, "m" => 13, "n" => 14, "o" =>15, "p" => 16,
"q" => 17, "r" => 18, "s" =>19, "t" => 20, "u" => 21, "v" => 22, "w" =>23, "x" => 24,
"y" => 25, "z" => 26, " " => 27} #establishes a hash relating a, b c with 1, 2, 3


letter_number = hash1[letter] #Letter number contains the number of each letter in the message 

if letter_number == 27
	then coded_letter_number = 27 # letter_number 27 refers to the space and is maintained as such
else	
	coded_letter_number = (letter_number + letter_offset)%26 #adds offset to letter number. The %26 adjusts letter number for negative values or values above 26
end

if coded_letter_number == 0 then coded_letter_number = 26 #adjusts for instances when number is 0 
end

hash3 = hash1.invert #hash3 inverts hash1 so we can extract a letter from a number input

encoded_letter = hash3[coded_letter_number] #retrieves a letter from hash3 depending on the value of coded_letter_number 
print letter, " ", encoded_letter, " " #prints initial message and spaces and encoded letter vertically
puts
end

