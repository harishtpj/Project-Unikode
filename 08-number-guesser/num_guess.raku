# Number guessing game in Raku
# Written by M.V.Harish Kumar on 04-08-2024
my $rnum = 101.rand.Int;
my $guesses = 0;
my @guessed_nums = ();

say "Number Guessing Game";
say "Guess the number which the computer thinks of";
say "The number is between 1 to 100";

loop {
	my $unum = +prompt "Enter your guess: ";
	if $unum == $rnum {
		$guesses++;
		say "Yay! You've guessed the number in $guesses chances";
		last;
	} elsif ($unum > 100) or ($unum < 1) {
		say "Guessed number is out of range";
		$guesses++;
	} elsif $unum < $rnum {
		say "You've guessed low";
		$guesses++ unless $unum ~~ any @guessed_nums;
	} else {
		say "You've guessed high";
		$guesses++ unless $unum ~~ any @guessed_nums;
	}
	@guessed_nums.push($unum);
}
