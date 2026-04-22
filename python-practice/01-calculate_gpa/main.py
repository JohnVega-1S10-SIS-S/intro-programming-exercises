user_input = input("Indicates the number of grades to be graded, max number is 10: ")

total = 0

def is_number(s):
    try:
        float(s)
        return True
    except ValueError:
        return False
    
if is_number(user_input):
    quantity = int(user_input)

    if quantity <= 10:

        for x in range(quantity):
            print("Note ",x+1,": ")
            value = int(input())
            total += value

        average = total / quantity

        if average <= 59:
            print("Your average is ",average," You Failed.")
        elif average >= 60 and average <= 79:
            print("Your average is ",average," You have passed.")
        else:
            print("Average is ",average," Passing with Excellence")

    else:
        print("The max number to graded is 10 and you introduce: ",quantity)

else:
    print("To grade grades you must enter a number.")

