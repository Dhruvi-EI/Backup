import random
print("Welcome to GameZone\n","\U0001f600")
games={"A":"movie_guessing game","B":"rock_paper_scissor","C":"Flames","D":"cafe","G":"TicTacToe","F":"snake_ladder","E":"Exit Zone"}
print(games,"\n")
for i, j in games.items():
    print("Enter", i,"to play", j)
userValue = input("Enter Your choice: ").lower()
balance = 500 #total balance is 500 when entering into gamezone and per game costs it 30 rupees
Flag=0
def A():
    #game = 30
   global balance
   balance = balance - 30
   print(balance)
   movie = ["3idiots", "Shershah", "Pathaan", "Yeh jawani Hai deewani"]
   movie = random.choice(movie)
   movie = movie.replace(" ", "")
   movie = movie.lower()
   print(movie)
   movie = list(movie)
   movie1 = ["*"] * len(movie)
   print(movie1)
   chance = 5
   while (movie != movie1 and chance > 0):
        c = input("enter a character/digit:")
        if c in movie:
            for i in range(len(movie)):
                if movie[i] == c:
                    movie1[i] = c
        else:
            chance = chance - 1
            print("wrong answer you have", chance, "chances left")
        print(movie1)

   if chance > 0:
    balance = balance + 20
    print("Your current balance is: ", balance)
def B():
    # rock paper scissor game
    global balance
    balance = balance - 30
    print(balance)
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
            balance = balance + 20
            print("Your current balance is: ",balance)
            print("user is winner")
        chance += 1
def C():
    # FLAMES GAME
    print("This game is just for fun so no bonus points will be given here")
    global balance
    balance = balance - 30
    print(balance)
    string1 = "FLAMES"
    lst1 = list(string1)
    name1 = input("Enter the first name:").lower()
    name2 = input("Enter the second name :").lower()
    lsname1 = list(name1)
    lsname2 = list(name2)
    for x in lsname1[:]:
        if x in lsname2:
            lsname1.remove(x)
            lsname2.remove(x)
    total = len(lsname1) + len(lsname2)
    len_lst1 = len(lst1)
    count = 0
    # To define the range how many times the game need to be played
    while ((len(lst1)) != 1):  # While length is =1 then the game is not possible
        for x in range(len(lst1)):
            count += 1
            if (count == total):
                count = 0
                lst1.remove(lst1[x])
        # print("The list size ",len_lst1)
        # len_lst1-=1
    print(lst1)
def D():
    # exercise of restaurant
    global balance
    # balance = balance - 100
    # print(balance)
    menu = {"pizza": 90, "burger": 50, "sandwich": 60, "pasta": 75, "buttermilk": 30}
    print("menu list\n")
    a = "".lower() # a is the key
    sum = 0
    lst_order = {}
    for i, j in menu.items():
        print(i, "price", j)
    while (a != "no"):
        order = input("\nenter your order: ").lower()
        Quantity = input("enter the quantity: ")
        lst_order[order] = Quantity  # the order and quantity is getting stored in lst_order dictionary
        print("\n'press ok to order more and no to stop'\n")
        a = input("do you want to order more?").lower()
    print("\norder confirmation: ", order)
    for i, j in lst_order.items():
        for k, m in menu.items():
            if (i == k):
                sum = sum + int(j) * int(m)  # here j is the quantity which is stored in lst_order and m is the value wich is the proce of the menu
    print("your total bill is: ", sum)
    add = input("do you want to add items in your order?: ").lower()
    if add == "yes":
        order = input("please enter your order: ").lower()
        quantity = input("please enter the quantity: ")
        lst_order[order] = Quantity
    sum = 0
    for i, j in lst_order.items():
        for k, m in menu.items():
            if (i == k):
                sum = sum + int(j) * int(m)
    print("your total bill is: ", sum)
    r = input("do you want to remove any item?: ").lower()
    if r == "yes":
        remove_item = input("enter the item you want to remove: ").lower()
        del lst_order[remove_item]
    sum = 0
    for i, j in lst_order.items():
        for k, m in menu.items():
            if (i == k):
                sum = sum + int(j) * int(m)
    print("your total bill is: ", sum)
    print("Thank you for ordering")
    balance=balance-sum
    print(balance)
def F():
    global balance
    balance = balance - 30
    print(balance)
    ladder = {1: 38, 4: 14, 8: 30, 21: 42, 28: 76, 50: 67, 71: 92, 80: 99}
    snake = {97: 78, 95: 56, 88: 24, 62: 18, 48: 26, 36: 6, 32: 10}
    i = 0
    position = 0
    b = "y"
    while position < 100 and b == "y":
        c = 0
        b = input("Do you want to play: ")
        Dice = random.randint(1, 6)
        print("position is: ", position)
        print(Dice)
        # for ladder part
        # j is the position of user after dice
        for i, j in ladder.items():
            if i == position and c == 0:
                position = j
                print("position is: ", position)
                position = position + Dice
                print("current position is: ", position)
                c = 1
                if position > 100:
                    position = position - Dice
                    print("position is: ", position)
        # for snake part
        # n is the psoition of player after dice
        for k, n in snake.items():
            if k == position and c == 0:
                position = n
                print("position is: ", position)
                position = position + Dice
                print("position is: ", position)
                c = 1
                if position > 100:
                    position = position - Dice
        if c == 0:
            position = position + Dice
            if position > 100:
                position = position - Dice
        if position == 100:
            print("you won")
def G():
    global balance
    balance = balance - 30
    print(balance)
    import numpy as np
    mat = np.array([["_", "_", "_"], ["_", "_", "_"], ["_", "_", "_"]])

    def print_board(mat_copy):
        global mat
        print(mat_copy)

    def check_winner():
        global cwin
        for i in range(0, 3):
            if mat[i][0] == mat[i][1] and mat[i][0] == mat[i][2]:
                if mat[i][0] == "x":
                    print("X won the match")
                    cwin = "win"
                    break
                else:
                    cwin = "win"
                    break
            else:
                cwin = "loss"
        for i in range(0, 3):
            if mat[0][i] == mat[1][i] and mat[0][i] == mat[2][i]:
                if mat[i][0] == "x":
                    print("X won the match")
                    cwin = "win"
                    break
                else:
                    cwin = "win"
                    break
            else:
                cwin = "loss"

    turn = 1
    cwin = "loss"
    print_board(mat)
    # 1 for x and 0 for O
    while (cwin != "win"):
        if (turn == 1):
            print("x turn")
            row = int(input("please enter a value of row: "))
            column = int(input("please enter a value of column: "))
            mat[row][column] = "x"
            # print(x)
            print_board(mat)
            print(cwin)
            cwin = check_winner()
            print(cwin)
            turn = 0
        else:
            print("y turn")
            row = int(input("please enter a value of row: "))
            column = int(input("please enter a value of column: "))
            mat[row][column] = "O"
            # print(x)
            print_board(mat)
            cwin = check_winner()
            turn = 1

    if (cwin == "win"):
        print("match over")

print(userValue)
while(userValue!='e'):
    if(userValue == 'a'):
        A()
    elif(userValue == 'b'):
        B()
    elif(userValue == 'c'):
        C()
    elif(userValue == 'd'):
        D()
    elif(userValue=='f'):
        F()
    elif(userValue=='g'):
        G()
    elif (userValue == 'e'):
        break
    # elif(userValue==
    # 'G'):
    #     G()
    else:
        print("Invalid game option")
    print(games)
    userValue = input("Enter Your choice: ").lower()

print("Your current balance is ", balance)







