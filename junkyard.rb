#Random snippets of code to test what it does.

# Encoder: This shifts each letter forward by 4 letters and stores it in a hash called cipher. On reaching the end, it loops back to the first letter

def encoder (shift_by)
alphabet = []
cipher = {}
cipher_new = {}
alphabet =  ("a".."z").to_a
alphabet.each_index do |x|
		if (x+shift_by) <= 25
			cipher = {alphabet[x] => alphabet[x+shift_by]}
		else
			# cipher.merge! (alphabet[x] => alphabet[x-(26-shift_by)]
			cipher = {alphabet[x] => alphabet[x-(26-shift_by)]}
			
		end
		cipher_new.merge!(cipher)
		
	end
	puts cipher_new
end


encoder(4)




