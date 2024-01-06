// Simple Greeter program in C#
// Created by M.V.Harish Kumar on 06-01-2024
using System;

namespace Greeter
{
    class Greeter
    {
        static void Main(string[] args)
        {
            Console.Write("Please enter your name: ");
            string name = Console.ReadLine();
            Console.WriteLine($"Hello, {name}! Hope you're fine");
        }
    }
}