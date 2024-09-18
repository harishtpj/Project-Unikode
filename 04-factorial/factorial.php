<?php
// PHP program to compute factorial
// Created by M.V.Harish Kumar on 17-09-2024
function factorial($n) {
	return $n <= 1 ? 1 : $n*factorial($n-1);
}

$n = intval(readline("Enter value for `n`: "));
echo "$n! = " . factorial($n) . chr(10);
