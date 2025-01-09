# Perl program to compute factorial
# Created by M.V.Harish Kumar on 09-01-2025
use v5.40;

sub factorial($n) {
	return $n <= 1 ? 1 : $n * factorial($n-1);
}

print "Enter value for `n`: ";
chomp(my $n = <STDIN>);
say "$n! = @{[factorial $n]}"