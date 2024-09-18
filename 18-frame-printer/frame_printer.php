<?php
// PHP program to print words in a frame
// Written by M.V.Harish Kumar on 18-09-2024

$s = readline("Enter a string: ");
$words = explode(" ", $s);

$max_len = 0;
foreach ($words as $word) {
	if (strlen($word) > $max_len)
		$max_len = strlen($word);
}

echo str_repeat('*', $max_len+4) . "\n";
foreach ($words as $word) {
	echo '* ' . str_pad($word, $max_len) . " *\n";
}
echo str_repeat('*', $max_len+4) . "\n";
