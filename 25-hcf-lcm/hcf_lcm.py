# Python program to find HCF and LCM of 2 numbers
# Created by M.V.Harish Kumar on 22-05-2024
def hcf(p, q):
    while q != 0:
        p, q = q, p % q
    return p

def lcm(p, q):
    return p*q//hcf(p,q)

n1 = int(input('Enter no 1: '))
n2 = int(input('Enter no 2: '))
print(f"HCF = {hcf(n1,n2)} LCM = {lcm(n1,n2)}")
