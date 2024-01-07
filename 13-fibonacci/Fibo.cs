// C# program to print the first n fibonacci numbers
// Written by M.V.Harish Kumar on 07-01-2024
using System;

namespace Name
{
    class Fibo
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Fibonacci series printer\n");
            Console.Write("Enter the no. of terms: ");
            int n = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("The first {n} terms of fibonacci series are:");
            var (a, b) = (0, 1);
            for (int i = 0; i < n; i++)
            {
                Console.WriteLine(a);
                (a, b) = (b, a+b);
            }
        }
    }
}