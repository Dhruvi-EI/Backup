import random

def B():
    # rock paper scissor game
    chance = 0
    while chance < 3:
        turn = ["r", "p", "s"]
        turn = random.choice(turn)
        user = input("enter your r for rock,p for paper and s for scissor: ")
        print(turn)
        # turn=list(turn)
        b = turn
        if user == "r" and b == "p":
            print("computer is winner")
        elif user == "s" and b == "r":
            print("computer is winner")
        elif user == "s" and b == "p":
            print("computer is winner")
        elif user == b:
            print("tie")
        else:
            print("user is winner")
        chance += 1
B()