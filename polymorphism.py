class Parent:
  def __init__(self, name, age):
    self.name = name
    self.age = age

  def move(self):
    print("Drive!")

class Child(Parent):
  def move(self):
    print("Sail!")

class Second(Child):
  def move(self):
    print("Fly!")

person1 = Parent("Dhruvi", "21")   #Create a parent class
person2= Child("Aayush", "19")     #Create a child class
person3= Second("Dhruv", "20")     #Create a second class

for x in (person1, person2, person3):
    print(x.name)
    print(x.age)
    x.move()
