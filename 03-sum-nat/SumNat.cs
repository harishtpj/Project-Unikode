// C# program to sum all numbers from 1 to n
// Created by M.V.Harish Kumar on 06-01-2024
using System;

namespace SumNat
{
    class SumNat
    {
        static int SumToN(int n)
        {
            int sum = 1;
            for (int i = 2; i <= n; i++)
            {
                sum += i;
            }
            return sum;
        }

        static void Main(string[] args)
        {
            Console.Write("Enter value for `n`: ");
            int n = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine($"The sum from 1 to {n} is {SumToN(n)}");
        }
    }
}