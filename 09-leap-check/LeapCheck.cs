// C# program to check if a given year is leap or not
// Created by M.V.Harish Kumar on 07-01-2024
using System;

namespace LeapCheck
{
    class LeapCheck
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Leap year checker");
            Console.Write("Enter a year: ");
            ushort yr = Convert.ToUInt16(Console.ReadLine());
            if ((yr % 4 == 0) && (yr % 100 != 0) || (yr % 400 == 0))
                Console.WriteLine($"{yr} is a Leap year");
            else
                Console.WriteLine($"{yr} is NOT a Leap year");
        }
    }
}