<?php
// Leap check program in PHP
// Written by M.V.Harish Kumar on 17-09-2024

function is_leap($yr) {
	return ($yr % 4 == 0) && ($yr % 100 != 0) || ($yr % 400 == 0);
}

echo "Leap year checker\n";
$year = intval(readline('Enter a year: '));
if (is_leap($year)) {
	echo "$year is a Leap Year\n";
} else {
	echo "$year is NOT a Leap Year\n";
}
