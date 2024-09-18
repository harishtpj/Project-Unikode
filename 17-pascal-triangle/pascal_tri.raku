# Raku program to print Pascal Triangle
# Created by M.V.Harish Kumar on 18-09-2024

sub postfix:<!>(Int $n where * >= 0) { [*] 1..$n }

my $n = prompt("Enter no. of rows: ").Int;
for ^$n -> $i {
	print " " for 0..($n-$i);
	print ($i! div ($_! * ($i - $_)!)) ~ " " for 0..$i;
	say "";
}
