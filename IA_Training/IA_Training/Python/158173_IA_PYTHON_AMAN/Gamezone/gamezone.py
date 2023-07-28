tot_cash = 500


def movie_guess():
    import random
    global tot_cash
    org_movie = ["sholay", "3 Idiots", "run", "ready"]
    org_movie = random.choice(org_movie)
    org_movie = org_movie.replace(" ", "")
    org_movie = org_movie.lower()
    org_movie = list(org_movie)
    print("***Welcome to movie guessing game🎥***")
    chance = 4
    guess_movie = ["-"] * len(org_movie)
    while (org_movie != guess_movie and chance > 0):

        print("Movie to guess", guess_movie)
        a = input("Enter a char--")
        if a in org_movie:

            for i in range(len(org_movie)):
                if (org_movie[i] == a):
                    guess_movie[i] = a
        else:
            chance -= 1
        if chance == 0:
            print("Oops you have used all your chances!")
    if org_movie == guess_movie:
        print("Congrats! you guessed it correct")
        print("We are adding 20 points😁😁!!")
        tot_cash = tot_cash + 20


def flames():
    print("\n\n *** Welcome to FLAMES game🔥🔥!!***")
    string1 = "FLAMES"
    lst1 = list(string1)
    name1 = input("Enter the name one :")
    name2 = input("Enter the name two :")
    lsname1 = list(name1)
    lsname2 = list(name2)
    for i in lsname1[:]:
        if i in lsname2:
            lsname1.remove(i)
            lsname2.remove(i)
    tot = len(lsname1) + len(lsname2)
    len_lst1 = len(lst1)
    count = 0
    while ((len(lst1)) != 1):
        for i in range(len(lst1)):
            count += 1
            if (count == tot):
                count = 0
                lst1.remove(lst1[i])

    print("The relation between them is", lst1)
    print("FLAMES....")
    print("F = Friend \nL = Love \nA = Affection \nM = Marriage \nE = Enemy \nS = Siblings \n\n")


def snake_ladder():
    global tot_cash
    import random
    print("\n\n *** Welcome to snake and ladder game 🐍 !!***")
    lad = [(1, 38), (4, 14), (8, 30), (21, 42), (28, 76), (50, 67), (71, 92), (80, 99)]
    lader = dict(lad)
    sn = [(97, 78), (95, 56), (88, 24), (62, 18), (48, 26), (36, 6), (32, 10)]
    snake = dict(sn)
    lader = dict(lad)
    score1 = 0


    def snakeLogic(score):
        dice = random.randint(1, 6)
        if (score == 95):
            print(dice)
            if (score in snake.keys()):
                score = snake[score]

        elif (score == 96):
            print(dice)
            if (dice <= 4):
                score += dice
                print("Score", score)
        elif (score == 97):
            print(dice)
            if (score in snake.keys()):
                score = snake[score]

        elif (score == 98):
            print(dice)
            if (dice <= 2):
                score += dice
                print("Score", score)
        elif (score == 99):
            print(dice)
            if (dice <= 1):
                score += dice
                print("Score", score)

        else:
            if (score <= 94):
                print(dice)
                score += dice

            if (score in lader.keys()):
                score = lader[score]
            if (score in snake.keys()):
                score = snake[score]
            print("Score", score)
        return score

    while (score1 < 100):
        user1 = input(" Press 1 to continue...")
        score1 = snakeLogic(score1)

    print("Player1 score is ", score1)
    if (score1 == 100):
        print("You are Winner")
        print("You win 20 points😁")
        tot_cash = tot_cash + 20
    else:
        print("Error occured")



def rock_paper_scissor():
# rock paper scissor game
    import random

    global tot_cash
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
            tot_cash = tot_cash + 20
            print("Your current balance is: ",tot_cash)
            print("user is winner")
            chance += 1


def print_board(board):
    print("-------------")
    for i in range(3):
        print("|", board[i][0], "|", board[i][1], "|", board[i][2], "|")
        print("-------------")


def check_win(board):
    for i in range(3):
        if board[i][0] == board[i][1] == board[i][2] and board[i][0] != "-":
            return True
        if board[0][i] == board[1][i] == board[2][i] and board[0][i] != "-":
            return True
    if board[0][0] == board[1][1] == board[2][2] and board[0][0] != "-":
        return True
    if board[0][2] == board[1][1] == board[2][0] and board[0][2] != "-":
        return True
    return False


def play_game():
    global tot_cash

    print("***\n\nWelcome to Tic tac toe ***")
    board = [["-", "-", "-"], ["-", "-", "-"], ["-", "-", "-"]]
    player = "X"
    while not check_win(board):
        print_board(board)
        row = int(input("Enter row for " + player + " (0, 1, or 2): "))
        col = int(input("Enter column for " + player + " (0, 1, or 2): "))
        if board[row][col] == "-":
            board[row][col] = player
            if player == "X":
                player = "O"
            else:
                player = "X"
        else:
            print("That space is taken. Try again.")
    print_board(board)
    print("Congratulations, " + player + " wins!")
    print("You won 20 points😁")
    tot_cash = tot_cash + 20


def restaurant():
    # exercise of restaurant
    global tot_cash
    # balance = balance - 100
    # print(balance)
    print("***Welcome to Shubham Dhaba😋😋(Best in town!!)***")
    menu = {"burger 🍔": 90, "samosa": 50, "sandwich🥪": 60, "idli": 75, "buttermilk🥛": 30}
    print("menu list\n")
    a = "".lower() # a is the key
    sum = 0
    lst_order = {}
    for i, j in menu.items():
        print(i, "price", j)
    while (a != "no"):
        order = input("\nenter your order: ").lower()
        Quantity = input("enter the quantity: ")
        lst_order[order] = Quantity # the order and quantity is getting stored in lst_order dictionary
        print("\n'press ok to order more and no to stop'\n")
        a = input("do you want to order more?").lower()
    print("\norder confirmation: ", order)
    for i, j in lst_order.items():
        for k, m in menu.items():
            if (i == k):
                sum = sum + int(j) * int(m) # here j is the quantity which is stored in lst_order and m is the value wich is the proce of the menu
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
        print("Thank you for ordering😁")
        tot_cash = tot_cash-sum
        print(tot_cash)


while tot_cash >= 30:
    print("Welcome to the GAME ZONE!!!")
    print("1.For Movie guessing\n2.For snake and ladder\n3.For playing rock,paper and scissors\n4.For FLAMES\n5.For tic tac toe\n6.For checking balance\n7.For retaurant\n8.To exit GameZone")
    c = int(input("Enter what you wish to do!--"))

    if c == 1:
        tot_cash = tot_cash - 30
        movie_guess()
        print("You still have", tot_cash, "Left!")

    elif c == 2:
        tot_cash = tot_cash - 30
        snake_ladder()
        print("You still have", tot_cash, "Left!")
    elif c == 3:
        tot_cash = tot_cash - 30
        rock_paper_scissor()
        #if flag == 1:
         #   tot_cash = tot_cash + 20
        print("You still have", tot_cash, "Left!")
    elif c == 4:
        tot_cash = tot_cash - 30
        flames()
        print("You still have", tot_cash, "Left!")
    elif c == 5:
        tot_cash = tot_cash - 30
        play_game()
        print("You still have", tot_cash, "Left!")
    elif c == 6:
        print("You have", tot_cash, "left")
    elif c == 7:
        restaurant()
    elif c == 8:
        print("Thanks for visiting GameZone...Visit again!😁")
        break







