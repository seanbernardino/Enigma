# Enigma
Writing a Ruby program to encode a user provided string into a cipher. The program must also have the ability to decode the cipher back into the user generated string. Finally, the encoding mechanism will need to be dynamic, i.e. it should not be a fixed (hard-coded) conversion of letters, instead a conversion that happens differently each time the program is run.

The program might use three methods

1. ENCODER: A method to encode a user string by 'shifting' each letter in the user generated string based on a 'shifter'

2. DECODER: A method to decode the encoded cipher back into the user string, by knowing the shifter. 

3. SHIFTER: A method to randomly generate a shifter value, which is then used to shift each letter in the user string forward by the value of the shifter.
