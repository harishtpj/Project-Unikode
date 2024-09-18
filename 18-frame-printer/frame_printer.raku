# Raku program to print words in a frame
# Written by M.V.Harish Kumar on 18-09-2024

my $s = prompt "Enter a string: ";
my $max-len = $s.words.map({.chars}).max;
say '*' x ($max-len + 4);
.fmt("* %-{$max-len}s *").say for $s.words;
say '*' x ($max-len + 4);
