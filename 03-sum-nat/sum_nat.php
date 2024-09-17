<?php
# PHP ython program to sum numbers from 1 to n
# Created by M.V.Harish Kumar on 17-09-2024
function sumToN($n) {
    $sum = 0;
    for ($i = 0; $i <= $n; $i++) { 
        $sum += $i;
    }
    return $sum;
}

$n = +readline("Enter value for `n`: ");
$ans = sumToN($n);
echo "The sum from 1 to $n is $ans";