// Armstrong number checker in C#
// Created by M.V.Harish Kumar on 07-01-2024
using System;

namespace Armstrong
{
    class Armstrong
    {
        static bool IsArmstrong(int num)
        {
            int len = (num != 0) ? ((int) Math.Log(num, 10) + 1) : 1;
            int anum = 0;
            int tmp = num;
            while (tmp > 0)
            {
                anum += (int) Math.Pow(tmp % 10, len);
                tmp /= 10;
            }
            return anum == num;
        }

        static void Main(string[] args)
        {
            Console.Write("Enter a number: ");
            int num = Convert.ToInt32(Console.ReadLine());
            if (IsArmstrong(num))
                Console.WriteLine($"{num} is a Armstrong number");
            else
                Console.WriteLine($"{num} is NOT a Armstrong number");
        }
    }
}