# Number guessing game written in Perl
# Created by M.V.Harish Kumar on 23-01-2025
use v5.40;

my $rnum = int rand 101;
my $guesses = 0;
my @guessed_nums;

say "Number Guessing game";
say "Guess the number which the user thinks of";
say "The number is between 1 to 100";

for (;;) {
    print "Enter your guess: ";
    chomp(my $unum = <STDIN>);
    if ($unum == $rnum) {
        $guesses++;
        say "Yay! You've guessed the number in $guesses chances";
        last;
    } elsif ($unum > 100 or $unum < 1) {
        say "Guessed number is out of range";
        $guesses++;
    } elsif ($unum < $rnum) {
        say "You've guessed low";
        $guesses++ if not grep /^$unum$/, @guessed_nums;
    } elsif ($unum > $rnum) {
        say "You've guessed high";
        $guesses++ if not grep /^$unum$/, @guessed_nums;
    }
    push @guessed_nums, $unum if not grep /^$unum$/, @guessed_nums;
}