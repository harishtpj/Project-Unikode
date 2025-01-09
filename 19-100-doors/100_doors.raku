# Raku program to implement the 100 doors problem
# Written by M.V.Harish Kumar on 23-11-2024

my @doors = False xx 100;
(.=not for @doors[0, $_ ...100]) for 1..100;
say "Door {$_} is ", <closed open>[@doors[$_]] for 1..100; 
say "Only ", (.key if .value for @doors.pairs), " are open";
