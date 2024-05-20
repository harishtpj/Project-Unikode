# 23. The `Luhn test for credit cards` problem
The Luhn test is used by some credit card companies to distinguish valid credit card numbers from what could be a random selection of digits.

Those companies using credit card numbers that can be validated by the Luhn test have numbers that pass the following test:

1. Reverse the order of the digits in the number.
2. Take the first, third, ... and every other odd digit in the reversed digits and sum them to form the partial sum s1
3. Taking the second, fourth ... and every other even digit in the reversed digits:
  -  Multiply each digit by two and sum the digits if the answer is greater than nine to form partial sums for the even digits
  -  Sum the partial sums of the even digits to form s2
4. If s1 + s2 ends in zero then the original number is in the form of a valid credit card number as verified by the Luhn test.

Write a function which validates a number with Luhn test

This problem is taken from collection [3](https://github.com/harishtpj/Project-Unikode/blob/master/README.md#%E2%84%B9-about)

# 🛠 Things used
... Same as previous problems


# Important observations
- NULL
