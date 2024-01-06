// C# program to check if a given number is prime or not
// Created by M.V.Harish Kumar on 06-01-2024
using System;

namespace PrimeCheck
{
    class PrimeCheck
    {
        static bool IsPrime(int n) {
            if (n == 2)
                return true;
            
            if (n < 1)
                return false;
            
            int ulim = Convert.ToInt32(Math.Sqrt(n));
            for (int i = 2; i <= ulim; i++)
            {
                if (n % i == 0)
                    return false;
            }

            return true;
        }

        static void Main(string[] args)
        {
            Console.Write("Enter a number: ");
            int num = Convert.ToInt32(Console.ReadLine());
            if (IsPrime(num))
            {
                Console.WriteLine($"{num} is Prime");
            }
            else
            {
                Console.WriteLine($"{num} is NOT Prime");
            }
        }
    }
}