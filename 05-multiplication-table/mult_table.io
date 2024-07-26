// Io lang program to print multiplication tables
// Written by M.V.Harish Kumar on 13-07-2024

Number genTables := method(t,
	writeln(self, " Tables\n");
	for(i, 1, t, writeln(self, " x ", i, " = ", self*i));
)

"Enter the no. to generate tables: " print
number := File standardInput readLine asNumber
"Enter the no. till which to generate: " print
times := File standardInput readLine asNumber
number genTables(times)
