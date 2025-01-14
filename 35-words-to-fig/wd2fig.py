# Python program to convert given number in words to integer
# Created by M.V.Harish Kumar on 14-01-2025

def wd2fig(words, num2Wd={}):
    if not num2Wd:
        onesTo20 = ('zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten',
                    'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 
                    'eighteen', 'nineteen')
        tens = ('zero', 'ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety')
        delims = ('hundred', 'thousand', 'million', 'billion')
        num2Wd.update({wd: (1,i) for i, wd in enumerate(onesTo20)})
        num2Wd.update({wd: (1, i*10) for i, wd in enumerate(tens)})
        num2Wd.update({wd: (10 ** (2 if i == 0 else i*3), 0) for i, wd in enumerate(delims)})

    cur = res = 0
    if any(words.startswith(d) for d in delims):
        words = 'one ' + words
    for word in words.lower().replace(' and ', ' ').split():
        if word not in num2Wd:
            raise ValueError("Illegal word encountered!")

        scale, incr = num2Wd[word]
        cur = cur*scale + incr
        if scale > 100:
            res += cur
            cur = 0

    return res+cur

num = input("Enter a number(in words): ")
print(f"{num!r} in figures: {wd2fig(num)}")



