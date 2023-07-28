import numpy as np
def G():
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
G()