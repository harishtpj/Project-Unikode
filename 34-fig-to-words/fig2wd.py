# Python program to convert given number to words
# Created by M.V.Harish Kumar on 14-01-2025

def fig2wd(n):
    onesTo20 = ('zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten',
                'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 
                'eighteen', 'nineteen')
    tens = ('zero', 'ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety')

    if n < 0 or n > 999_999_999_999:
        raise ValueError("Number out of range!")
    elif n < 20:
        return onesTo20[n]
    elif n < 100:
        t, o = divmod(n, 10)
        return f"{tens[t]} {fig2wd(o) if o > 0 else ''}".strip()
    elif n < 1e3:
        h, t = divmod(n, 100)
        return f"{onesTo20[h]} hundred and {fig2wd(t) if t > 0 else ''}".strip()
    elif n < 1e6:
        th, h = divmod(n, 1000)
        return f"{fig2wd(th)} thousand {fig2wd(h) if h > 0 else ''}".strip()
    elif n < 1e9:
        m, th = divmod(n, 1_000_000)
        return f"{fig2wd(m)} million {fig2wd(th) if th > 0 else ''}".strip()
    elif n < 1e12:
        b, m = divmod(n, 1_000_000_000)
        return f"{fig2wd(b)} billion {fig2wd(m) if m > 0 else ''}".strip()

num = int(input("Enter a number: "))
print(f"{num} in words: {fig2wd(num)}")



