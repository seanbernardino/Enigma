# Enigma
Writing a Ruby program to encode a user provided string into a cipher. The program must also have the ability to decode the cipher back into the user generated string. Finally, the encoding mechanism will need to be dynamic, i.e. it should not be a fixed (hard-coded) conversion of letters, instead a conversion that happens differently each time the program is run.

The program might use three methods

1. ENCODER: A method to encode a user string by 'shifting' each letter in the user generated string based on a 'shifter'

2. DECODER: A method to decode the encoded cipher back into the user string, by knowing the shifter. 

3. SHIFTER: A method to randomly generate a shifter value, which is then used to shift each letter in the user string forward by the value of the shifter.


Roak: I think I might have nailed down the encoder function. Can you take a stab at the decoder function. Clone this repository and don't forget to make a branch. The way I think about it, is that the decoder function is going to have to be a reverse engineering of the encoding function. For now, let's leave out the possibility of any numbers and special characters in the user provided string or in the ciphered text. Let's just assume that it's always going to be only letters. Once you like what you push, send me a merge/pull request so I can merge your code into master.
