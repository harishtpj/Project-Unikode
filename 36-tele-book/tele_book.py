# Telephone Directory book program in Python
# Written by M.V.Harish Kumar on 18-06-2025
import json
import sys

telebook = {}

def print_banner(data, title=False):
    print(data)
    print('*' * len(data) if title else '-' * len(data))

def add():
    print_banner("Add contact")
    name = input("Enter contact name: ")
    telebook[name] = input("Enter contact no: ")
    print("Added contact successfully")

def view():
    print_banner("View contact")
    if not telebook:
        print("Contact list is empty!")
        return
    for k in telebook:
        print(f"- {k}")
    cname = input("Select contact: ")
    num = telebook.get(cname, "Not found")
    print(f"Contact details for {cname}: {num}")

def update():
    print_banner("Update contact")
    if not telebook:
        print("Contact list is empty!")
        return
    for k, v in telebook.items():
        print(f"- {k}: {v}")
    cname = input("Select contact to update: ")
    try:
        telebook[cname] = input(f"Enter new number for {telebook[cname]}: ")
        print("Updated contact successfully")
    except KeyError:
        print("Attempt to access non-existant contact")

def delete():
    print_banner("Delete contact")
    if not telebook:
        print("Contact list is empty!")
        return
    for k, v in telebook.items():
        print(f"- {k}: {v}")
    cname = input("Select contact to delete(or * for all): ")
    if cname == '*':
        telebook.clear()
        print("Cleared all data")
    else:
        try:
            del telebook[cname]
            print("Deleted data successfully")
        except KeyError:
            print("Attempt to access non-existant contact")

def persist():
    if not telebook:
        print("Contact list is empty! No contact to save")
        return
    print_banner("Persist data")
    fname = input("Give the file name to save: ")
    with open(fname, 'w') as f:
        json.dump(telebook, f)


if __name__ == '__main__':
    if len(sys.argv) == 2:
        with open(sys.argv[1]) as f:
            telebook = json.load(f)
    elif len(sys.argv) != 1:
        raise TypeError("Invalid no of args")

    tele_switch = [add, view, update, delete, persist, exit]

    print_banner("Welcome to TeleBook", title=True)
    while True:
        print("1. Add contact")
        print("2. View contact")
        print("3. Update contact")
        print("4. Delete contact(s)")
        print("5. Persist telebook")
        print("6. Exit")

        opt = int(input("Enter an option: "))
        try:
            tele_switch[opt-1]()
        except IndexError:
            print("Invalid option")
