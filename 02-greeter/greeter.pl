# Simple greeter program in Perl
# Written by M.V.Harish Kumar on 08-01-2025
use v5.40;

print "Please enter your name: ";
chomp(my $name = <STDIN>);
say "Hello $name! Hope you're fine";
