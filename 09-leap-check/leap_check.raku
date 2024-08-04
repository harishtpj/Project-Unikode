# Leap check program in Raku
# Written by M.V.Harish Kumar on 04-08-2024
sub is-leap($yr) {
	($yr mod 4 == 0) and ($yr mod 100 != 0) or ($yr mod 400 == 0)
}

say "Leap year checker";
my $year = +prompt "Enter a year: ";
say "$year is {'NOT ' unless is-leap($year)}a Leap Year";
