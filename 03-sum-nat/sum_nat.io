// Io lang program to find sum of n natural numbers
// Written by M.V.Harish Kumar on 12-07-2024
sumNat := method(n,
	Range setRange(1,n) asList sum
)

"Enter value for n: " print
n := File standardInput readLine asNumber
writeln("The sum from 1 to ", n, " is ", sumNat(n))
