import random
ladder={1:38,4:14,8:30,21:42,28:76,50:67,71:92,80:99}
snake={97:78,95:56,88:24,62:18,48:26,36:6,32:10}
i=0
position=0
b="y"
while position<100 and b=="y":
  c=0
  b=input("Do you want to play: ")
  Dice=random.randint(1,6)
  print(Dice)
  for i,j in ladder.items():
    if i==position and c==0:
      position=j
      print("position is: ",position)
      position=position+Dice
      print("position is: ",position)
      c=1
      if position>100:
        position=position-Dice
        print("position is: ",position)
  for k,n in snake.items():
    if k==position and c==0:
      position=n
      print("position is: ",position)
      position=position+Dice
      print("position is: ",position)
      c=1
      if position>100:
        position=position-Dice
  if c==0:
    position=position+Dice
    if position>100:
      position=position-Dice
  if position==100:
    print("you won")