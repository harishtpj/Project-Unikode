<?php
// PHP program to print the no of occurances of characters
// Created by M.V.Harish Kumar on 18-09-2024
$s = readline("Enter a string: ");
$freq = [];
foreach (str_split($s) as $c) {
	if (!array_key_exists($c, $freq)) 
		$freq[$c] = 1;
	else
		$freq[$c]++;
	
}
echo "The no of occurances are:\n";
foreach ($freq as  $ch => $count) {
	echo "\t'$ch': $count\n";
}
