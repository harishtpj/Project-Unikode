# Raku program to implement Newton-Raphson method
# Created by M.V.Harish Kumar on 27-07-2024

sub derive(&f) {
	constant iota = 1e-10;
	return { (f($^x + iota) - f($^x)) / iota };
}

sub newton-raphson(&fn, $xinit, $max_iter) {
	my &dfn = derive &fn;
	my $iter = 0;
	my $x0 = $xinit;

	if fn($x0) != 0 {
		printf "% 12s|\t{' ' x 4}x0|\tx\n", "Iteration no";
		say "=" x 30;
	}

	while fn($x0) != 0 {
		if $iter != -1 {
			if $iter == $max_iter {
				say "Maximum iteration reached";
				last;
			}
		}
		$iter++;

		printf "% 12s|\t%2.4f|\t", "Iteration $iter", $x0;
		my $derivative = dfn $x0;
		if $derivative == 0 {
			say "Derivative is 0.";
			last;
		}
		my $x = $x0 - (fn($x0) / $derivative);
		say $x0 = $x;
	}
	say "The root is $x0";
}

sub MAIN {
	my &func = { 2*$^x**2 - 7*$^x + 3 };
	my $x0 = +prompt "Enter value for x0: ";
	my $max_iter = +prompt "Enter maximum iteration: ";
	newton-raphson &func, $x0, $max_iter;
}
