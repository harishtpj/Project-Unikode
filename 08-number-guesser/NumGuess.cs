// Number guessing game written in C#
// Created by M.V.Harish Kumar on 07-01-2024
using System;
using System.Collections.Generic;

namespace NumGuess
{
    class NumGuess
    {
        static void Main(string[] args)
        {
            int guesses = 0;
            List<int> guessed_nums = new List<int>();
            int rnum = new Random().Next(1, 101);

            Console.WriteLine("Number Guessing Game");
            Console.WriteLine("Guess the number which the computer thinks of");
            Console.WriteLine("The number is between 1 to 100\n");

            while (true)
            {
                Console.Write("Enter your guess: ");
                int unum = Convert.ToInt32(Console.ReadLine());

                if (unum == rnum)
                {
                    guesses += 1;
                    Console.WriteLine($"Yay! You've guessed the number in {guesses} chances");
                    break;
                }
                else if ((unum < 1) || (unum > 100))
                {
                    Console.WriteLine("Guessed number is out of range");
                    guesses += 1;
                }
                else
                {
                    if (unum < rnum)
                        Console.WriteLine("You've guessed Low");
                    else if (unum > rnum)
                        Console.WriteLine("You've guessed High");
                    guesses += guessed_nums.Contains(unum) ? 0 : 1;
                }
                guessed_nums.Add(unum);
            }
        }
    }
}