# Solutions to the first 11 problems of the 99 FP series
# Written by M.V.Harish Kumar on 14-01-2024

class HList(list):
    """
    A subclass of built-in list type
    """

    def __init__(self, *iter: tuple) -> None:
        super().__init__(iter)

    def last(self) -> object:
        """ Solves P01 """
        return super().__getitem__(-1)

    def penLast(self) -> object:
        """ Solves P02 """
        return super().__getitem__(-2)

    def elementAt(self, k: int) -> object:
        """ Solves P03 """
        return super().__getitem__(k-1)

    def length(self) -> int:
        """ Solves P04 """
        l = 0
        for _ in super().__iter__(): 
            l += 1
        return l

    def reverse(self) -> list:
        """ Solves P05 """
        return super().__getitem__(slice(None, None,-1))

    def isPalindrome(self) -> bool:
        """ Solves P06 """
        return self == self.reverse()
    
    def flatten(self) -> list:
        """ Solves P07 """
        f_list = []
        for e in super().__iter__():
            if isinstance(e, list) or isinstance(e, tuple):
                f_list.extend(HList(*e).flatten())
            else:
                f_list.append(e)
        return f_list
    
    def compress(self) -> list:
        """ Solves P08 """
        prev = None
        n_list = []
        for e in super().__iter__():
            if e != prev:
                n_list.append(e)
            prev = e
        return n_list
    
    def pack(self) -> list:
        """ Solves P09 """
        n_list = [[self.elementAt(1)]]
        zipped = zip(super().__iter__(), super().__getitem__(slice(1,None)))
        for it1, it2 in zipped:
            if it1 == it2:
                n_list[-1].append(it2)
            else:
                n_list.append([it2])
        return n_list
    
    def rle(self) -> list:
        """ Solves P10 & P11 """
        s = []
        for l in self.pack():
            s.append([len(l), l[0]] if len(l) != 1 else l[0])
        return s

