# Perl program to print file contents
# Written by M.V.Harish Kumar on 14-01-2025
open FILE, '<', $ARGV[0] or die "Can't open file: $!";
print "Contents of $ARGV[0]:\n";
print '-'x20 . "\n";
print <FILE>;
print "\n". '-'x20 . "\n";
