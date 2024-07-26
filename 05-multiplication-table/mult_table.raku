# Raku program to print multiplication tables
# Written by M.V.Harish Kumar on 26-07-2024

sub print-tables($n, $t) {
	say "$n Tables\n";
	say "$n x $_ = {$n*$_}" for 1..$t;
}

my $num = +prompt "Enter the table to print: ";
my $times = +prompt "Enter the no. of times to print: ";
print-tables $num, $times;
