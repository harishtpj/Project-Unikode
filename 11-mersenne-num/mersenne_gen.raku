# Raku program to generate mersenne numbers
# Created by M.V.Harish Kumar on 17-09-2024

my $n = prompt("Number of mersenne numbers to generate: ").Int;
my @mersenne = (2**$_-1 for 1..$n);
say "The first $n mersenne numbers are:";
say "\t {@mersenne.join(', ')}";

