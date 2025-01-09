# Perl program to check if a number is prime
# Written by M.V.Harish Kumar on 09-01-2025
use v5.40;

sub is_prime($n) {
    return true if $n == 2;
    do {return false if ($n % $_ == 0)} for 2..(int sqrt $n);
    return $n > 1;
}

say "Prime number checker\n";
print "Enter value for `n`: ";
chomp(my $n = <STDIN>);
say "$n is @{[!is_prime($n) ? 'NOT ' : '']}Prime";