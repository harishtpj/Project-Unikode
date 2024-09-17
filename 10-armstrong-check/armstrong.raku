# Raku program to check if the given number is armstrong
# Written by M.V.Harish Kumar on 15-09-2024

my $num = prompt "Enter a number: ";
my $arm-num = [+] (+$_ ** $num.chars for $num.comb);
say "$num is {'NOT ' unless +$num == $arm-num}a Armstrong Number";
