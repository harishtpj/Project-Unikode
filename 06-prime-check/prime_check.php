<?php
// PHP program to check if a Number is prime
// Written by M.V.Harish Kumar on 17-09-2024

function is_prime($n) {
	if ($n == 2)
		return True;

	for ($i = 2; $i <= (int)sqrt($n); $i++)
		if ($n % $i == 0)
			return False;

	return $n > 1;
}

echo "Prime number checker\n\n";
$n = intval(readline("Enter value for `n`: "));
if (is_prime($n)) {
	echo "$n is Prime\n";
} else {
	echo "$n is NOT Prime\n";
}
