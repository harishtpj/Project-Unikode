# Raku program to compute first n fibonacci terms
# Written by M.V.Harish Kumar on 15-09-2024 

my @fib = 0, 1, * + * ... *;
say "Fibonacci series printer\n";
my $nterms = +prompt "Enter the no of terms to print: ";
say "The first $nterms terms of fibonacci series are:";
.say for @fib[^$nterms];
