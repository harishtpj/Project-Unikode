// Io program to check if a number is prime or not
// Written by M.V.Harish Kumar on 13-07-2024

Number isPrime := method(
	(n == 2) ifTrue(return(true));

	for(i, 2, n sqrt floor,
		(n % i == 0) ifTrue(return(false)));

	return(n > 1);
)

"Enter a number: " print
n := File standardInput readLine asNumber
write(n, " is ")
n isPrime not ifTrue("NOT " print)
writeln("a Prime number")
