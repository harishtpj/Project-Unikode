# Raku program to print the no of occurances of characters
# Created by M.V.Harish Kumar on 17-09-2024

my $s = prompt "Enter a string:";
my %freq;
%freq{$_}++ for $s.comb;
say "\t'{.key}': {.value}" for %freq;
