=begin 
This program should include 3 methods. 1 to encode a user input string based on a 'shifted' value. 2 to decode the encryted string back into the user provided string, but knowing this 'shifted' value. And 3, a method that randomly sets this 'shifted' value.
=end

# Method 1
def encode (word, shifter) #This function should encrypt a user provided string by shifting each letter forward by the number of letters specided in shifter. So if shifter = 3, then 'a' => 'd', 'b' => 'e',..... 'z' => 'c'
	alphabet = [] #Empty array to store all letters as an array
	cipher = {} #Empty hash to store the original letter as a key and encoded (shited) letter as the value
	cipher_new = {} #Another empty hash that will merge two ciphers
	alphabet =  ("a".."z").to_a #store all letters in alphabet (and convert it to an array)
	alphabet.each_index do |x| #Start a look for each letter in the alphabet array
			if (x+shifter) <= 25 #If the index + the shifter <= 25, i.e. index of z = 25, 
				cipher = {alphabet[x] => alphabet[x+shifter]} #then populate the hash cipher with the key alphabet[x] and the paired value as alphabet[x+shifter], so for shifter =4, 'a' => 'e'
			else
				cipher = {alphabet[x] => alphabet[x-(26-shifter)]} #else if x+shifter goes beyond 25, i.e. z, then loop the value back to a. So for same shifter = 4, 'x' => 'b'
				
			end
			cipher_new.merge!(cipher) #Keep merging each iteration of this loop (as cipher expands) to cipher_new{}
			
		end
		# p cipher_new

	#Now to deal with the user word
	arr_word = word.downcase.split(//) #downcase, split, and store the user word into an array
	
	@encoded_word = [] #create an empty array to hold the encoded word when it has been ciphered

	arr_word.each do |myletter| #for each letter in user word,
		@encoded_word << cipher_new[myletter] #find it in the cipher_new hash, pull the corresponding key, and store it in encoded_word. So now encoded_word becomes an array of the encoded values of the user letters.
	end
	
	@encrypted = @encoded_word.join


end


# Method 2
def decode (code, shifter)

end


#Method 3
def shifter

end

def mainmenu ()
	puts "Welcome to the Enigma program"
	puts "-----------------------------------------------"
	puts "What would you like to do?"
	puts ""
	puts "1. Encode a word of your choice"
	puts "2. Decode an encrypted word"
	puts "3. Set the shifter key" 
	puts ""
	puts "Select your choice to continue..."
	puts ""
end

mainmenu()
choice = gets.chomp()

case choice
when "1"
	#This piece works
	puts "Enter a word you would like to have decoded."
	puts "For the moment, please do NOT include any special characters or numbers. Must be letters ONLY."
	userword = gets.chomp
	encode(userword, 4)
	puts "Your encoded word with default shifter 4 is #{@encrypted}"
	
when "2"
	puts "This functionality does not yet exist and is a work in progress. Please try again later."
when "3" 
	puts "This functionality does not yet exist and is a work in progress. Please try again later."
else
	puts "I didn't understand your choice. please try again."
	puts ""
	mainmenu()
end


