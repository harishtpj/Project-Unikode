<?php
// PHP program to generate mersenne numbers
// Created by M.V.Harish Kumar on 17-09-2024

$n = intval(readline("Number of mersenne numbers to generate: "));
echo "The first $n mersenne numbers are:\n";
echo "\t";
for ($i = 1; $i <= $n; $i++) {
	echo 2**$i-1;
	echo ($i != $n) ? ", " : "";
}
