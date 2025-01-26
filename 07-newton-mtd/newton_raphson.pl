# Perl program to implement Newton-Raphson method
# Written by M.V.Harish Kumar on 23-01-2025
use v5.40;

sub derive($f) {
    my $iota = 1e-10;
    return sub { ($f->($_[0] + $iota) - $f->($_[0])) / $iota };
}

sub newton_raphson($fn, $xinit, $max_iter) {
    my $dfn = derive \&$fn;
    my $iter = 0;
    my $x0 = $xinit;

    if ($fn->($x0) != 0) {
        printf "% 12s|\t    |\tx\n", "Iteration no";
        say "=" x 30;
    }

    while ($fn->($x0) != 0) {
        if ($iter != -1) {
            if ($iter == $max_iter) {
                say "Maximum iteration reached";
                last;
            }
        }
        $iter++;

        printf "% 12s|\t%2.4f|\t", "Iteration $iter", $x0;
        my $derivative = $dfn->($x0);
        if ($derivative == 0) {
            say "Derivative is zero";
            last;
        }
        my $x = $x0 - ($fn->($x0) / $derivative);
        say $x0 = $x;
    }
    say "The root is $x0";
}

my $func = sub { 2*$_[0]**2 - 7*$_[0] + 3 };
print "Enter value for x0: ";
chomp(my $x0 = <STDIN>);
print "Enter maximum iteration: ";
chomp(my $max_iter = <STDIN>);
newton_raphson \&$func, $x0, $max_iter;
