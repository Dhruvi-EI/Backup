import random

def A():
    #game = 30
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
A()