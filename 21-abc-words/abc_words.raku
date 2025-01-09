# Raku program to find ABC words
# Written by M.V.Harish Kumar on 24-11-2024

sub count-ABC-words($fname) {
	my $ftxt = $fname.IO.words;
	my $word-count = $ftxt.elems;
	my $abc-count = 0;
	$abc-count++, .say for $ftxt.grep({(.index('a')//next) < (.index('b')//next) < (.index('c')//next)});
	$abc-count, $word-count
}

my ($abcs, $words) = count-ABC-words @*ARGS[0];
say "Out of $words words, $abcs words are ABC words!";
