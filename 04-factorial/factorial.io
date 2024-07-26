// Io lang program to compute factorial
// Written by M.V.Harish Kumar on 13-07-2024
Number ! := method(if(self <= 1, 1, self*(self-1)!))

"Enter value for `n`: " print
n := File standardInput readLine asNumber
writeln(n, "! = ", n!)
