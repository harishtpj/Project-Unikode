# Python program to check if the given number is armstrong
# Written by M.V.Harish Kumar on 20-11-2023

num = input("Enter a number: ")
exp = len(num)

arm_num = 0
for d in num:
    arm_num += int(d) ** exp

if arm_num == int(num):
    print(f"{num} is a Armstrong number")
else:
    print(f"{num} is NOT a Armstrong number")
