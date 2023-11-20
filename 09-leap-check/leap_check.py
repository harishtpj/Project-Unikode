# Python program to check if a given year is leap
# Created by M.V.Harish Kumar on 20-11-2023

def is_leap(yr):
    return ((yr % 4 == 0) and (yr % 100 != 0) or (yr % 400 == 0))

print("Leap year checker")
year = int(input("Enter the year: "))
if is_leap(year):
    print(f"{year} is a Leap year")
else:
    print(f"{year} is NOT a Leap year")
