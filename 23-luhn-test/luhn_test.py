# Python program to validate no. with Luhn test
# Written by M.V.Harish Kumar on on 20-05-2024 

def luhn_test(number):
    num_list = [int(d) for d in number][::-1]
    s1 = sum(num_list[::2])
    s2 = sum([sum(divmod(n*2,10)) for n in num_list[1::2]])
    return (s1+s2) % 10 == 0

num = input("Enter a number: ")
print(f"Is the number {num} validates luhn: {luhn_test(num)}")
