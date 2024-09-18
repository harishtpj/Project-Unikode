<?php
// PHP program to print FizzBuzz
// Created by M.V.Harish Kumar on 18-09-2024

$n = intval(readline("Enter the no. of terms: "));
for ($i = 1; $i <= $n; $i++) {
	if ($i % 15 == 0)
		echo "FizzBuzz\n";
	elseif ($i % 5 == 0)
		echo "Buzz\n";
	elseif ($i % 3 == 0)
		echo "Fizz\n";
	else
		echo "$i\n";
}
