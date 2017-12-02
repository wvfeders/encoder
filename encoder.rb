#grades = { "Jane Doe" => 10, "Jim Doe" => 6 }
#puts grades["Jane Doe"] # => 0


puts "input a letter"
letter = gets.chomp #letter varialbe captures input from screen
hash1 = {"a" => 1, "b" => 2, "c" =>3, "d" => 4, "e" => 5, "f" => 6, "g" =>7, "h" => 8,
"i" => 9, "j" => 10, "k" =>11, "l" => 12, "m" => 13, "n" => 14, "o" =>15, "p" => 16,
"q" => 17, "r" => 18, "s" =>19, "t" => 20, "u" => 21, "v" => 22, "w" =>23, "x" => 24,
"y" => 25, "z" => 26} #establishes a hash relating a, b c with 1, 2, 3
puts letter #print leeter to screen to check that gets.chomp worked
letternumber = hash1 [letter] # gets the number of the letter from hash1
puts letternumber #Outputs letternumber to chcek if it is working
coded_letter = letternumber + 13 #adds 13 to letternumber to encode the letter
if coded_letter > 26 
	coded_letter = coded_letter - 26
end	

#hash2 = {14 => "n", 15 => "o", 16 => "p"} #sets up hash2 to relate coded letter to coded letter
hash3 = hash1.invert
print letter, hash3[coded_letter] #prints coded letter
