<?php
// PHP program to print multiplication tables
// Written by M.V.Harish Kumar on 17-09-2024

function print_tables($n, $t) {
	echo "$n Tables\n\n";
	for ($i = 1; $i <= $t; $i++) {
		echo "$n x $i = " . $n*$i . "\n";
	}
}

$num = intval(readline("Enter the table to print: "));
$times = intval(readline("Enter the no. of times to print: "));
print_tables($num, $times);
