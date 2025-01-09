# Perl program to generate multiplication tables
# Created by M.V.Harish Kumar on 09-01-2025
use v5.40;

sub gen_tables($n, $t) {
    say "$n Tables";
    say "$n x $_ = @{[$n*$_]}" for 1..$t;
}

print "Enter the no. to generate tables: ";
chomp(my $n = <STDIN>);
print "Enter the no. till which to generate: ";
chomp(my $t = <STDIN>);
gen_tables $n, $t;