# Simple leap checker in perl
# Written by M.V.Harish Kumar on 13-06-2025 
use strict;
use warnings;

sub is_leap {
	my ($yr) = @_;
	($yr % 4 == 0) and ($yr % 100 != 0) or ($yr % 400 == 0);
}

print "Leap year checker:\n";
print "Enter year: ";
chomp(my $yr = <STDIN>);
if (is_leap($yr)) {
	print "$yr is a leap year";
} else {
	print "$yr is NOT a leap year";
}
