# Raku program to implement Jewels and Stones fn
# Written by M.V.Harish Kumar on 24-11-2024
sub jewel-stones($jewels, $stones) {
	[+] ($stones.contains($_) for $jewels.comb)
}

my $s1 = prompt "Enter string 1: ";
my $s2 = prompt "Enter string 2: ";
say "No. of common letters: {jewel-stones $s1, $s2}";
