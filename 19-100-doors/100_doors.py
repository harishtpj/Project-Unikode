# Python program to implement the 100 doors problem
# Written by M.V.Harish Kumar on 16-05-2024 
doors = [False] * 100

def toggle(step):
    for i in range(step, 100, step+1):
        doors[i] = not doors[i]

for j in range(100):
    toggle(j)

for door_no in range(len(doors)):
    print(f"Door {door_no+1} is {'open' if doors[door_no] else 'closed'}")

print("Only", [i for i,status in enumerate(doors, start=1) if status], "doors are open")
