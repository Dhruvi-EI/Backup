#Given a list, write a Python program to swap first and last element of the list.
# l1=[1,2,3]
# l1[0],l1[-1]=l1[-1],l1[0]
# print(l1)
import math
import random

#Given a list in Python and provided the positions of the elements,
# write a program to swap the two elements in the list.
# l1=[12,45,26,97]
# l1[2],l1[0]=l1[0],l1[2]
# print(l1)

#Find the Length of a List in Python Naive Method
# l1=[15,647,92837,65,"kegj"]
# count=0
# for i in l1:
#     count=count+1
# print(count)

#Given a string. the task is to check if the string is symmetrical and palindrome or not
# string1="amaama"
# print(string1)
# abc=int(len(string1)/2)
# a=string1[:abc]
# print("a",a)
# print("b",b)
# b=string1[abc:]
# if a==b:
#     print("symmetrical")
# else:
#     print("not symmetrical")
# if a==b[::-1]:
#     print("palindrome")
# else:
#     print("not palindrome")

#Remove Letters From a String using the native method
# string1="dhruvi virani"
# list1=list(string1)
# list1.pop(4)
# print(list1)
# str=''
# for i in list1:
#     str=str+i
# print(str)

#create a list which has 5 numbers, and out of 5,
# ill select any number at random and find the sqaure root of it,
# if the sqaure root is not perfect number, the nearest integer will be taken.
# And all 5 numbers's sqaure root will be append into new list.

# method1
# list1=[]
# for i in range(1,6):
#     list1.append(random.randint(20,100))
# print("random numbers input list: ",list1)
# list2=[]
# for j in list1:
#     list2.append(math.sqrt(j))
# print("square roots :",list2)
# list3=[]
# for k in list2:
#     list3.append(round(k))
# print("rounded square roots",list3)

#method2
# randomlist = []
# for i in range(0,5):
#     n = random.randint(1,100)
#     randomlist.append(n)
# print(randomlist)
#
# def nearest_int(num):
#     sqrt = math.isqrt(num)
#     return sqrt
# sqroot_with_no_decimal = [nearest_int(num) for num in randomlist]
# print("Square root list:", sqroot_with_no_decimal)

#Find length of a string in python
# str="egjh shtdu KUI fjwrdy aKYsiu egwhdy"
# con=0
# for i in str:
#     con=con+1
# print(con)

#Given a string. The task is to print all words with even length in the given string.
# str="hello all, this is a cat"
# a=str.split(" ")
# print(a)
# for i in a:
#     if len(i)%2==0:
#         print(i)

#Given a list of numbers of list, write a Python program to create a list of tuples having first element
# as the number and second element as the cube of the number.
# list1=[2,3,6,5,12]
# l1=[]
# for i in list1:
#     tuple1=(i,i**3)
#     l1.append(tuple1)
# print(l1)

#Python dictionary with keys having multiple inputs
# dict={}
# a,b,c=10,11,12
# dict[a,b,c]=a
# print(dict)
# a,b,c=1,2,3
# dict[a,b,c]=b
# print(dict)

#Python program to find the sum of all items in a dictionary
# dict={'a':12,'b':20,'c':8}
# con=0
# for i in dict.values():
#     con=con+i
# print(con)

#Get size of a Dictionary in Python
# dict={'a':12,'b':20,'c':8,'dhgfg':'jszghj'}
# con=0
# for i in dict.items():
#     con=con+1
# print(con)

#Find the size of a Set in Python
# set={3,85,875,5}
# con=0
# for i in set:
#     con=con+1
# print(con)
# print(max(set),min(set))

#Python | Remove items from Set, pop():The element that is the smallest in the set is removed first followed by removing elements in increasing order
# set1={48,21,56,98,2,65,3,8}
# for i in range(len(set1)):
#     set1.pop()
#     print(set1)

#Python | Check if two lists have at-least one element common
# l1=[1,3,2,4,6,7]
# l2=[1,5,8,9]
# l3=[]
# for i in l1:
#     for j in l2:
#         if i==j:
#             print(True)
#             l3.append(i)
#             print(l3)

#Given an integer N, the task is to print half-diamond-star pattern.
# user=int(input("enter the number: "))
# for i in range(user):
#         for j in range(0,i+1):
#             print("*",end='')
#         print()
# for i in range(1,user):
#     for j in range(i,user):
#         print("*",end='')
#     print()

#Programs for printing pyramid patterns in Python
# user=int(input("enter the number: "))
# for i in range(user):
#     for j in range(0,i+1):
#         print("* ",end='')
#     print()

# user=int(input("enter the number: "))
# for i in range(1,user+1):
#     for j in range(i):
#         print(i,end='')
#     print()

#Python program to find the power of a number using recursion
# def power(num,pow):
#     if num==0:
#         return 1
#     else:
#         return(num^pow)
#
# ans=pow(3,2)
# print(ans)

#Sorting objects of user defined class in Python
# def sort_num(num):
#     return(sorted(num))
#
# def sort_str(string):
#     return(sorted(string.split(),key=str.lower))
#
# ans=sort_num([1,4,7,3,7])
# result=sort_str("Geeks for Geeks")
# print(ans)
# print(result)

