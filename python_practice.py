#check whether the string is anagram or not
#An anagram of a string is another string that contains same characters, only the order of characters can be different.
#For example, “abcd” and “dabc” are anagram of each other.

user1=input("enter a string: ")
user2=input("enter another string: ")
user2=sorted(user2)
user1=sorted(user1)
if user1==user2:
    print("Anagram")
else:
    print("not")
