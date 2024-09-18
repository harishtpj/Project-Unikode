<?php
// PHP program to compute first n fibonacci series
// Written by M.V.Harish Kumar on 18-09-2024

echo "Fibonacci series printer\n\n";
$nterms = intval(readline("Enter the no of terms to print: "));
echo "The first $nterms terms of fibonacci series are:\n";
[$a, $b] = [0, 1];
for ($i = 0; $i < $nterms; $i++) {
	echo $a . "\n";
	[$a, $b] = [$b, $a+$b];
}
