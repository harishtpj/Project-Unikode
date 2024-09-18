<?php
// PHP program to check if the given number is armstrong
// Written by M.V.Harish Kumar on 17-09-2024

$num = readline('Enter a number: ');
$exp = strlen($num);

$arm_num = 0;
for ($i = 0; $i < $exp; $i++) {
	$arm_num += intval($num[$i]) ** $exp;
}

if ($arm_num == intval($num)) {
	echo "$num is a Armstrong number\n";
} else {
	echo "$num is NOT a Armstrong number\n";
}
