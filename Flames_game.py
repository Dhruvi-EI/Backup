def C():
    # FLAMES GAME
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
C()