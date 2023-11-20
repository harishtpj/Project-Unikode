# Number guessing game written in Python
# Created by M.V.Harish Kumar on 20-11-2023
import random

rnum = random.randint(1, 100)
guesses = 0
guessed_nums = []

print("Number Guessing Game")
print("Guess the number which the computer thinks of")
print("The number is between 1 to 100")

while True:
    unum = int(input("Enter your guess: "))
    if unum == rnum:
        guesses += 1
        print(f"Yay! You've guessed the number in {guesses} chances")
        break
    elif (unum > 100) or (unum < 1):
        print("Guessed number is out of range")
        guesses += 1
    elif unum < rnum:
        print("You've guessed low")
        guesses += 1 if unum not in guessed_nums else 0
    else:
        print("You've guessed high")
        guesses += 1 if unum not in guessed_nums else 0
    guessed_nums.append(unum)
    
