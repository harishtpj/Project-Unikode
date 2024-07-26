# Raku program to compute factorial
# Written by M.V.Harish Kumar on 26-07-2024

sub fact($n) {
	return [*] 1..$n;
}

my $num = +prompt "Enter value for `n`: ";
say "$num! = {fact($num)}";
