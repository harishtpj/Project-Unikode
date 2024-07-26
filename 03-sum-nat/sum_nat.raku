# Raku program to find sum from 1 to n
# Written by M.V.Harish Kumar on 26-07-2024

sub sumToN($n) {
	return [+] 1..$n;
}

my $num = +prompt "Enter value for `n`: ";
say "The sum from 1 to $num is {sumToN $num}";
