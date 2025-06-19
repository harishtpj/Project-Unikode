// Telephone directory book program in Go
// Written by M.V.Harish Kumar on 19-06-2025
package main

import (
	"bufio"
	"encoding/json"
	"fmt"
	"os"
	"regexp"
	"strings"
)

var telebook map[string]string
var scnr = bufio.NewScanner(os.Stdin)

func isValidNumber(number string) bool {
	re := regexp.MustCompile(`^(\+?91)?\d{10}`)
	return re.MatchString(number)
}

func printBanner(msg string, isTitle bool) {
	fmt.Println(msg)
	char := "-"
	if isTitle {
		char = "*"
	}
	fmt.Println(strings.Repeat(char, len(msg)))
}

func inputString(prompt string) string {
	fmt.Print(prompt)
	scnr.Scan()
	return scnr.Text()
}

func add() {
	printBanner("Add Contact", false)
	name := inputString("Enter contact name: ")
	number := inputString("Enter contact number: ")
	if isValidNumber(number) {
		telebook[name] = number
		fmt.Println("Added contact successfully")
	} else {
		fmt.Println("Invalid number format")
	}
}

func view() {
	printBanner("View contacts", false)
	if len(telebook) == 0 {
		fmt.Println("Contact list is empty!")
		return
	}
	for k := range telebook {
		fmt.Printf("- %s\n", k)
	}
	cname := inputString("Select contact: ")
	num, hasName := telebook[cname]
	if !hasName {
		num = "Not found"
	}
	fmt.Printf("Contact details for %s: %s\n", cname, num)
}

func update() {
	printBanner("Update contacts", false)
	if len(telebook) == 0 {
		fmt.Println("Contact list is empty!")
		return
	}
	for k, v := range telebook {
		fmt.Printf("- %s: %s\n", k, v)
	}
	cname := inputString("Select contact to update: ")
	_, hasName := telebook[cname]
	if !hasName {
		fmt.Println("Attempt to access non-existant contact")
		return
	}
	newNum := inputString(fmt.Sprintf("Enter new number for %s: ", cname))
	if isValidNumber(newNum) {
		telebook[cname] = newNum
		fmt.Println("Updated contact successfully")
	} else {
		fmt.Println("Invalid number format")
	}
}

func del() {
	printBanner("Delete contact", false)
	if len(telebook) == 0 {
		fmt.Println("Contact list is empty!")
		return
	}
	for k, v := range telebook {
		fmt.Printf("- %s: %s\n", k, v)
	}
	cname := inputString("Select contact to delete(or * for all): ")
	if cname == "*" {
		for k := range telebook {
			delete(telebook, k)
		}
		fmt.Println("Cleared all data")
	} else {
		if _, ok := telebook[cname]; !ok {
			fmt.Println("Attempt to delete non-existant contact")
			return
		}
		delete(telebook, cname)
		fmt.Println("Deleted contact successfully")
	}
}

func persist() {
	if len(telebook) == 0 {
		fmt.Println("Contact list is empty! No contact to save")
		return
	}
	printBanner("Persist data", false)
	fname := inputString("Enter file name to save: ")
	data, _ := json.Marshal(telebook)
	os.WriteFile(fname, data, 0666)
	fmt.Println("Saved to file successfully")
}

func main() {
	var opt uint
	if len(os.Args) == 2 {
		ftxt, _ := os.ReadFile(os.Args[1])
		json.Unmarshal(ftxt, &telebook)
	} else if len(os.Args) == 1 {
		telebook = make(map[string]string)
	} else {
		panic("Invalid no of arguments")
	}

	teleswitch := [5]func(){add, view, update, del, persist}

	printBanner("Welcome to telebook", true)
	for {
		fmt.Println("1. Add contact")
		fmt.Println("2. View contact")
		fmt.Println("3. Update contact")
		fmt.Println("4. Delete contact(s)")
		fmt.Println("5. Persist telebook")
		fmt.Println("6. Exit")

		fmt.Print("Enter an option: ")
		fmt.Scanln(&opt)

		if opt == 6 {
			break
		} else if opt > 0 && opt < 6 {
			teleswitch[opt-1]()
		} else {
			fmt.Println("Invalid option")
		}
	}
}
