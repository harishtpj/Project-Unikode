# Raku program to print FizzBuzz
# Created by M.V.Harish Kumar on 15-01-2024

my $n = prompt("Enter the no. of terms: ").Int;
for 1..$n -> $i {
	if $i %% 15 {
		say "FizzBuzz";
	} elsif $i %% 5 {
		say "Buzz";
	} elsif $i %% 3 {
		say "Fizz";
	} else {
		say $i;
	}

}
