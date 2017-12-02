#grades = { "Jane Doe" => 10, "Jim Doe" => 6 }
#puts grades["Jane Doe"] # => 0


puts "input a letter a, b, or c"
letter = gets.chomp #letter varialbe captures input from screen
hash1 = {"a" => 1, "b" => 2, "c" =>3} #establishes a hash relating a, b c with 1, 2, 3
puts letter #print leeter to screen to check that gets.chomp worked
letternumber = hash1 [letter] # gets the number of the letter from hash1
puts letternumber #Outputs letternumber to chcek if it is working
coded_letter = letternumber + 13 #adds 13 to letternumber to encode the letter


hash2 = {14 => "n", 15 => "o", 16 => "p"} #sets up hash2 to relate coded letter to coded letter

puts hash2[coded_letter] #prints coded letter
