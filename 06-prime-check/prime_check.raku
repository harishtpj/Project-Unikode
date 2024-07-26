# Raku program to check if a Number is prime
# Written by M.V.Harish Kumar on 26-07-2024

sub isPrime($n) {
	return True if $n == 2;
	return False if $n mod $_ == 0 for 2..($n.sqrt.truncate);
	return $n > 1;
}

say "Prime number checker\n";
my $n = +prompt "Enter value for `n`: ";
say "$n is {'NOT ' unless isPrime $n}Prime";
