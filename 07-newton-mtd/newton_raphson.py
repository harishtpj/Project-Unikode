# Python program to implement Newton-Raphson method
# Created by M.V.Harish Kumar on 10-09-2023

def derive(f):
    iota = 1e-10
    def df(x):
        return (f(x + iota) - f(x)) / iota
    return df

def newton_raphson(fn, x0, max_iter):
    dfn = derive(fn)
    iter = 0

    if fn(x0) != 0:
        print("{:12}|\t{}|\t{}".format("Iteration no", ' ' * 4 + "x0", "x"))
        print("=" * 30)

    while fn(x0) != 0:
        if iter != -1:
            if iter == max_iter:
                print("Maximum iteration reached.")
                break
        iter += 1
        print("{:12}|\t{:2.4f}|\t".format(f"Iteration {iter}", x0), end="")
        derivative = dfn(x0)
        if derivative == 0:
            print("Derivation is 0.")
            break
        x = x0 - (fn(x0) / derivative)
        print(x0 := x)
    else:
        print(f"The root is {x0}")

if __name__ == "__main__":
    func = lambda x: 2*x**2 - 7*x + 3
    x0 = float(input("Enter value for x0: "))
    max_iter = int(input("Enter maximum iteration: "))
    newton_raphson(func, x0, max_iter)