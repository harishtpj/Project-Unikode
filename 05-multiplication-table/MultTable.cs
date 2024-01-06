// C# program to generate multiplication tables
// Created by M.V.Harish Kumar on 06-01-2024
using System;

namespace MultTable
{
    class MultTable
    {
        static void GenTable(int n, int t)
        {
            Console.WriteLine($"{n} Tables\n");
            for (int i = 1; i <= t; i++)
            {
                Console.WriteLine($"{n} × {i} = {n*i}");
            }
        }

        static void Main(string[] args)
        {
            Console.Write("Enter the no. to generate tables: ");
            int num = Convert.ToInt32(Console.ReadLine());
            Console.Write("Enter the no. till which to generate: ");
            int times = Convert.ToInt32(Console.ReadLine());
            GenTable(num, times);
        }
    }
}