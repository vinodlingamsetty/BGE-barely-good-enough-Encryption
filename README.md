# BGE-barely-good-enough-Encryption

"BGE (barely good enough) Encryption" Problem

This problem is about decoding hidden messages in specially created text. Create a single page web app where users can enter text and the app will display the hidden message. The app has 2 decryption algorithms:

Algorithm 1: 
1) Take the first character from each word.
2) Use a space character for any commas (“,”).
3) Concatenate all the characters to form the decrypted text.

Sample input: Her elephant lost lettuce often, while others really liked donuts.
Decrypted text: Hello world

Algorithm 2:
1) The length of the first word is used as a key (I’ll call it N).
2) For the remaining words select the character at position N. For words shorter than N print a space character.
3) Concatenate all the characters to form the decrypted text.

Sample Input: Dogs fight able abolish acclaim famous is airwaves favor diary darling handbag.
Decrypted text: hello world

Another input for algorithm 2:
Four hazy halos abduct an aligned abhors rafters on rabid rants.
