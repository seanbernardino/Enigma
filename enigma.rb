=begin 
This program should include 3 methods. 1 to encode a user input string based on a 'shifted' value. 2 to decode the encryted string back into the user provided string, but knowing this 'shifted' value. And 3, a method that randomly sets this 'shifted' value.
=end

# Method 0 - The dictionary
# def dictionary
# 	@alphabet = []
# 	@alphabet =  ("a".."z").to_a

# end

# Method 1
def encode (string, shifter) #This function should encrypt a user provided string by shifting each letter forward by the number of letters specided in shifter. So if shifter = 3, then 'a' => 'd', 'b' => 'e',..... 'z' => 'c'
	alphabet =  ("a".."z").to_a
    alphabet.each_index do |x|
    @cipher = {alphabet[x] => alphabet[x+4]}
end

end

# Method 2
def decode (code, shifter)

end


#Method 3
def shifter

end

puts "My word = Sean"
puts "................"
arr_word = "Sean".downcase.split(//)

