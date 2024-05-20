# Simple AWK Program to greet user
# Written by M.V.Harish Kumar on 19-05-2024
BEGIN {
	printf "Please enter your name: "
	getline name
	printf "Hello, %s! Hope you're fine\n", name
}
