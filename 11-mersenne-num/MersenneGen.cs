// C# program to generate mersenne numbers
// Written by M.V.Harish Kumar on 07-01-2024
using System;
using System.Collections.Generic;

namespace MersenneGen
{
    class MersenneGen
    {
        static void Main(string[] args)
        {
            List<int> mersenne = new List<int>();
            Console.Write("Number of mersenne numbers to generate: ");
            int lim = Convert.ToInt32(Console.ReadLine());
            for (int i = 1; i <= lim; i++)
            {
                mersenne.Add((int)Math.Pow(2, i) - 1);
            }
            Console.WriteLine($"The first {lim} mersenne numbers are:");
            Console.WriteLine("\t" + string.Join(", ", mersenne));
        }
    }
}