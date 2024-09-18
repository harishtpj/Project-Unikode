<?php
// PHP program to print Pascal Triangle
// Created by M.V.Harish Kumar on 18-09-2024

function fact($n) {
	if ($n <= 1) return 1;
	$prod = 2;
	for($i = 3; $i <= $n; $i++) $prod *= $i;
	return $prod;
}

function n_C_r($n, $r) {
	return intdiv(fact($n), fact($r)*fact($n-$r));
}

$n = intval(readline("Enter no. of rows: "));
for ($i = 0; $i < $n; $i++) {
	for($_ = 0; $_ <= ($n-$i); $_++) echo " ";
	for($j = 0; $j <= $i; $j++) echo n_C_r($i, $j) . " ";
	echo "\n";
}
