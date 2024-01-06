// C# program to compute factorial of a given number
// Written by M.V.Harish Kumar on 06-01-2024
using System;

namespace Factorial
{
    class Factorial
    {
        static ulong Fact(ulong n)
        {
            return n <= 1  ? 1 : n * Fact(n-1);
        }

        static void Main(string[] args)
        {
            Console.Write("Enter value for `n`: ");
            ulong n = Convert.ToUInt64(Console.ReadLine());
            Console.WriteLine($"{n}! = {Fact(n)}");
        }
    }
}