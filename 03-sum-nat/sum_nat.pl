# Perl program to sum numbers from 1 to n
# Created by M.V.Harish Kumar on 09-01-2025
use v5.40;

sub sum_to_n($n) {
	my $sum = 0;
	$sum += $_ for 1..$n;
	return $sum;
}

print "Enter value for `n`: ";
chomp(my $n = <STDIN>);
my $ans = sum_to_n $n;
say "The sum from 1 to $n is $ans";
