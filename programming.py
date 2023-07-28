import math
import random
import re
import string
from itertools import combinations
from itertools import permutations

#To print the values starting from 'ab' using inbuilt functions
# my_list = ['abc', 'abcd', 'xyz', 'dabc', 'acb']
# for i in my_list:
#     if i.startswith('ab'):
#         print(i)

#To print the power of two values using inbuilt functions
# user1=int(input("enter any number: "))
# user2=int(input("enter any number: "))
# print(pow(user1,user2))

# string1="dhruvi "
# string2="virani"
# print(string1 + string2)
# print(string1.strip())

# para="A well-organized paragraph supports or develops a single controlling idea, which is expressed in a sentence called the topic sentence. A topic sentence has several important functions: it substantiates or supports an essay’s thesis statement; it unifies the content of a paragraph and directs the order of the sentences; and it advises the reader of the subject to be discussed and how the paragraph will discuss it. Readers generally look to the first few sentences in a paragraph to determine the subject and perspective of the paragraph. That’s why it’s often best to put the topic sentence at the very beginning of the paragraph. In some cases, however, it’s more effective to place another sentence before the topic sentence—for example, a sentence linking the current paragraph to the previous one, or one providing background information."
# count=0
# for i in para:
#     if i.isspace():   #isspace is used to count spaces in a para
#         count+=1
# print(count)

# list=[1,2,3,4,8,5,0,66,54]
# list.sort(reverse=True)
# print(list)
# print(len(list))
# print(min(list))
# print(max(list))
# print(list[3])
# dict={'aman':'tiwari','dhruvi':'virani'}
# print(dict.items())

# list=[]
# list1=[1,23,4]
# list.append(list1)
# print(list)

# user1=int(input("enter a number1: "))
# user2=int(input("enter a number2: "))
# (user1,user2)=(user2,user1)
# print(user1,user2)

# a=int(input("enter a number: "))
# a=str(a)
# rev=a[::-1]
# print(rev)

# a=int(input("enter a number: "))
# def add(a):
#     while a>0:
#         a=a%10+a//10
#         if a>9:
#             a=a%10+a//10
#     print(a)
# add(a)

#To remove duplicate values from a list
# a=[1,2,3,3,4,5,6,7,7]
# list=[]
# for i in a:
#     if i not in list:
#         list.append(i)
# print(list)

#To remove duplicate values through by converting list through set
# a=[1,2,3,3,4,5,6,7,7]
# a=set(a)
# print(a)

#To remove duplicate values from a list through inbuilt functions
# a=[1,2,3,3,4,5,6,7,7]
# a.remove(3)
# a.remove(7)
# print(a)

#To sort lower, upper and ieric values in a string
# a="ADCBabdc14352"
# list=[]
# list2=[]
# list3=[]
# for i in a:
#     if i.islower():
#         list.append(i)
#     if i.isupper():
#         list2.append(i)
#     if i.isnumeric():
#         list3.append(i)
# finallist=sorted(list)+sorted(list2)+sorted(list3)
# str=''
# for i in finallist:
#     str=str+i
# print(str)

#To find the difference from two list by coverting into sets
# a=[1,2,3,7,5,0,9,8]
# b=[5,3,7,9,6,4,1,2]
# a=set(a)
# b=set(b)
# x=a.symmetric_difference(b)
# print(x)

#To find the difference from two lists using loop
# list=[]
# for i in a:
#     if i not in b:
#         list.append(i)
# for j in b:
#     if j not in a:
#         list.append(j)
# print(list)

# list=["a","h","f","i","k","l","e"]
# str=''
# for i in list:
#     str=str+i
# print(sorted(str))

# str=("dhruvi", "virani")
# a=str.capitalize()
# b="_".join(str)
# print("dhruvi"+"_"+"virani")
# print(b)

# txt = "hello, my name is Peter, I am 26 years old"
# x = txt.split(", ")
# print(x)

# b=[1,2,3]
# a=b.copy()
# print(a==b, a is b)

# user=int(input("enter the number: "))
# for i in range(user*2):
#     if i%2==0:
#         print(i)

# print("He said,\"Hello there!\"")

# a={'ravi': 10, 'rajnish': 9, 'sanjeev': 15, 'yash': 2, 'suraj': 32}
# b=list(a.keys())
# dict2=list(a.values())
# list=sorted(b)
# print(list)
# c=zip(list,dict2)
# print(dict(c))

# count=0
# for i in range(2000,3000):
#     if i%15==0:
#         count+=1
# print(count)

# str="geeksforgeeks"
# list=[]
# list2=[]
# for i in str:
#     if i not in list:
#         list.append(i)
#     else:
#         if i not in list2:
#             list2.append(i)
# print(list2)

#Print prime numbers in the range
# for val in range(1, 10):
#     if val > 1:
#         for i in range(2, val):
#             if (val % i) == 0:
#                 break
#         else:
#             print(val)

# dict1={'1':['a','b'], '2':['c','d']}
# for i in range(len(dict1)):
#     for j in range(len(dict1)):
#         print(dict1['1'][i]+dict1['2'][j])

#Sort the list2 considering list1
# list1 = ["a","b","c","d","e","f","g","h","i"]
# list2 = [0,1,1,0,1,2,2,0,1]
# l1=list(set(list2))
# l1.sort()
# s1=[]
# for i in l1:
#     for j in range(0,len(list2)):
#         if list2[j]==i:
#             s1.append(list1[j])
# print("old list: ", list1)
# print("old list2: ",list2)
# print("new list: " ,s1)
# print("new list2: ", sorted(list2))

# list1 = ["a","b","c","d","e","f","g","h","i"]
# list2 = [0,1,1,0,1,2,2,0,1]
# list=[]
# for i in range(0,len(list1)):
#     for j in range(0,len(list2)):
#         if list2[j]==i:
#             list.append(list1[j])
# print(list)

# n=76542
# n=str(n)
# print(n)
# print(n[::-1])

# n=76542
# n=str(n)
# n=list(n)
# n.reverse()
# print(n)

# new=reversed(n)
# for i in new:
#     print(list(i))

#A canteen requires 28 dozen bananas for a week. How many bananas will it require for 47 days?
# dozens=int(input("enter the number of dozens: "))
# days=int(input("enter the number of days: "))
# result=((days*dozens)/7)*12
# print(result)

# a=int(input("enter the number of a: "))
# b=int(input("enter the number of b: "))
# c=int(input("enter the number of c: "))
# result1=(-b+(4*a*c)**0.5)/2*a
# result2=(-b-(4*a*c)**0.5)/2*a
# print(result1)
# print(result2)

#reverse the number
# i = int(input("Enter the number: "))
# rev_i = 0  # initial value is 0. It will hold the reversed number
# def recur_reverse(i):
#     global rev_i  # We can use it out of the function
#     if (i > 0):
#         Reminder = i % 10
#         rev_i = (rev_i * 10) + Reminder
#         recur_reverse(i // 10)
#     return rev_i
# rev_i = recur_reverse(i)
# print("n Reverse of entered number is = %d" % rev_i)

# user=int(input("enter the number: "))
# str1="abcdefghijklmnopqrstuvwxyz"
# str1=list(str1)
# for i in range(user):
#     if i==len(str1):
#         print(i)

# string="$2625 per flight,hello"
# x = re.findall("", string)
# str=''
# for i in x:
#     str=str+i
# print(str)

# def inverted_star(a):
#     for i in range(a, 0, -1):
#         print('*' * i)
#
# # Example usage
# a=int(input("Enter number of rows:"))
# inverted_star(a)

#Write a code in python which checks the starting of string is vowels only using re(regular expression)
# string="bpple"
# if re.search("^[aeiouAEIOU]",string):
#     print("String is strating from a vowel")
# else:
#     print("Not starting from a vowel")

#check whether the number is a harshad number or not
# i=int(input("enter a number: "))
# def harshad_num(i):
#     while i>9:
#         i=i%10+i//10
#         if i>0:
#             i=i%10+i//10
#     return i
# ans=harshad_num(i)
# print(ans)
# if i%ans==0:
#     print("the number is harshad number")
# else:
#     print("not a harshad number")


# n=int(input("enter a num: "))
# b=n
# s=0
# while n:
#     a=n%10
#     s+=a
#     n=n//10
# print(s)
# if b%s==0:
#     print("harshad number:",b)
# else:
#     print("not a harshad number")


#Inbuilt function to add digits in a number
# num=input("enter a number: ")
#
# digit_sum = sum(int(digit) for digit in num)
# print(digit_sum)


#Python program to find the factorial of a number provided by the user using recursion
# user=int(input("enter a number: "))

# def factorial(x):
#     if x == 1:
#         return 1
#     else:
#         # recursive call to the function
#         return (x * factorial(x-1))
# num = 7
# # to take input from the user
# num = int(input("Enter a number: "))
# result = factorial(num)
# print("The factorial of", num, "is", result)

# def get_highest_lowest_ascii(word):
#     highest = lowest = ord(word[0])
#
#     for character in word:
#         ascii = ord(character)
#         if ascii > highest:
#             highest = ascii
#         if ascii < lowest:
#             lowest = ascii
#
#     print("Highest ASCII value:", highest)
#     print("Lowest ASCII value:", lowest)
#
# # Example usage
# input_word = "Dhruvi Virani"
# get_highest_lowest_ascii(input_word)

# Find the Ascii value of your name(Dhruvi), just find the individual ascii values (d,h,r,u,v,i).....
# and store in a list. Then sort the list in descending order
# list=[]
# string=["D","h","r","u","v","i"]
# print("Ascii value of the character is: ",ord(string[0]))
# list.append(ord(string[0]))
# print("Ascii value of the character is: ",ord(string[1]))
# list.append(ord(string[1]))
# print("Ascii value of the character is: ",ord(string[2]))
# list.append(ord(string[2]))
# print("Ascii value of the character is: ",ord(string[3]))
# list.append(ord(string[3]))
# print("Ascii value of the character is: ",ord(string[4]))
# list.append(ord(string[4]))
# print("Ascii value of the character is: ",ord(string[5]))
# list.append(ord(string[5]))
# list.sort(reverse=True)
# print(list)

#Python program to merge two dictionaries
# dict1={'a':'1','b':'2'}
# dict2={'c':'3','d':'4'}
# print({**dict1, **dict2})

# def Merge(dict1, dict2):
#     return(dict2.update(dict1))
# dict1 = {'a': 1, 'b': 2}
# dict2 = {'d': 3, 'c': 4}
# print(Merge(dict1, dict2))
# print(dict2)

#given a number, find cube root of the number
# num=int(input("enter a number: "))
# def cube_root(num):
#    while num!=0:
#       num = num % 3
#       num=num+3
#       return num
#
#
# ans=cube_root(num)
# print(ans)

# ---------------------File Handling------------------------
#Create a txt file using file handling in python and write anything of two lines in it.
# file1=open("myfile.txt","w")
# file1.write("Dhruvi is a good girl\n She is so innocent")
# file1.close()

#Write a python code that prints the contents of that particular file on the terminal
# file1=open("myfile.txt","r")
# text=file1.read()
# print(text)
# file1.close()

#Write a python code that prints only first 10 letters of a file
# file1=open("myfile.txt","r")
# print(file1.readline(10))

#Program to find the number of words in a file.(Use file handling terms)
# file1=open("myfile.txt","rt")
# count=file1.read()
# words=count.split()
# print("no of words are",len(words))

#to find number of occurences of words in txt file
# text = open("myfile.txt", "r")
# d = dict()
# for line in text:
#    line = line.strip()
#    line = line.lower()
#    words = line.split(" ")
#    for word in words:
#       if word in d:
#          d[word] = d[word] + 1
#       else:
#          d[word] = 1
#
# for key in list(d.keys()):
#    print(key, ":", d[key])
# print(d)

#Python program to reverse the content of a file and store it in another file
# file2=open("dfile.txt","w")
# file2.write("hey there\nthis is my text file")
# file2 = open("dfile.txt", "w")
# with open("dfile.txt", "r") as gfile:
#    data = gfile.read()
# rev = data[::-1]
# file2.write(rev)
# file2.close()


# x = int(input("enter a number x: "))
# y = int(input("enter a number y: "))
# z = int(input("enter a number z: "))
# n = int(input("enter a number n: "))
# list = []
# l1=[]
# for i in range(x+1):
#     for j in range(y+1):
#         for k in range(z+1):
#             sum=i+j+k
#             if sum!=n:
#                 list.append(i)
#                 list.append(j)
#                 list.append(k)
#                 l1.append(list)
#                 list=[]
# print(l1)

# mystr="codescracker"
# print(mystr.__getitem__(3))
# print(mystr[3])
# print(0xA + 0xB + 0xC)
# print(random.choice({0: 1, 2: 3}))
# d = {"john":40, "peter":45}
# print(len(d))
# a=3**4
# print(a)
# print("codescracker".endswith("er"))
# import math
# # print(math.copysign(3, -1))
# print(math.fabs(-3.4))
# # x = math.factorial(0)
# # x= math.floor(0o10)
# # print(x)
# # print(math.frexp(9))
# # print(math.fsum([.1 for i in range(20)]))
# # print(sum([.1 for i in range(20)]))
# # print(math.isfinite(float('inf')))
# print(math.isfinite(float('nan')))

# def decor1(func):
#     def inner(m):
#         x = func(m)
#         return x * 4
#     return inner
# @decor1
# def func1(y):
#     return y
#
# print(func1(1))  # print 4
# print(func1(2))  # print 8
# print(func1(3))  # print 12
# print(func1(4))

#Next Happy Number
# n=int(input("enter the number: "))
# list_of_num=list(str(n))
# l1 = []
# l2=[]
# for i in list_of_num:
#     sq=int(i)*int(i)
#     l1.append(sq)
#     total=0
#     for ele in range(0,len(l1)):
#         total=total+l1[ele]
#     print(total)
#     total=list(str(total))
#     for j in total:
#         square=int(j)*int(j)
#         l2.append(square)
# l2=set(l2)
# num=sum(l2)
# print(num)
# if num==1:
#     print("yay, it's a happy number")
# else:
#     print("not a happy number")

#Next Happy Number
# n = int(input("enter the number: "))
# sq=0
# while sq==0 or sq/10>=1:
#     sq=0
#     while n:
#         a=n%10
#         sq+=a*a
#         n=n//10
#     n=sq
# print(sq)
# if n==1:
#     print("happy number")
# else:
#     print("not a happy number")
#

# dict={'a':1,'b':2,'g':6}
# a=sorted(dict.items(), reverse=True)
# print(a)
# n = int(input("enter the number: "))
# l2=[]
# for i in range(n):
#     user = int(input("enter the number"))
#     l2.append(user)
# print(l2)
# l1 = []
# for j in l2:
#     if l2 % j == 0:
#         l1.append(j)
# print(sum(l1))
#
# if sum(l1) == l2:
#     print("YES")
# else:
#     print("NO")


# 12
# insert 0 5
# insert 1 10
# insert 0 6
# print
# remove 6
# append 9
# append 1
# sort
# print
# pop
# reverse
# print

#Given two strings needle and haystack, return the index of the first occurrence of needle in haystack,
# or -1 if needle is not part of haystack.
# haystack="badsadsad"
# needle="ucjh"
# if needle not in haystack:
#     print(-1)
# else:
#     print(haystack.index(needle))
# print(haystack.find(needle))

#Given a string s consisting of words and spaces, return the length of the last word in the string.
# input="   fly me   to   the moon  "
# short way
# print(len(input.split() [-1]))

#long way
# l1=list(input.strip().split(" "))
# print(l1)
# print(len(l1[-1]))

# Given an array of integers nums and an integer target,return indices of the two numbers such that they add up to target.
# user=input("enter numbers: ").split()
# user=list(map(int,user)) #map(int) is used to store int values
# target=int(input("enter target: "))
# for i in range(len(user)):
#     for j in range(i+1,(len(user))):
#         if target==user[i]+user[j]:
#             print("index of ",i,"+","index of ",j,"=",target)
# else:
#     print("summation not available")

# n=int(input())
# t1=tuple(map(int,input().split(' ')))
# print(hash(t1))

# str=input()
# print(str.swapcase())

# str="I am an intern at Einfochips."
# print("capitalize",str.capitalize())
# print("casefold",str.casefold())
# print("center",str.center(20))

# str1="Xyz"
# str2="AbC"
# str2=list(str2)
# new_str=str2[::-1]
# str12=''
# for i in new_str:
#     str12=str12+i
# str1=list(str1)
# str12=list(str12)
# a=dict(zip(str12,str1))
# l1=[]
# for i,j in a.items():
#     l1.append(i)
#     l1.append(j)
# string=''
# for i in l1:
#     string=string+i
# print(string)
# sorted_word = ''.join(sorted(set(string), key=str.lower))
# print(sorted_word)


# string="lion"
# s1=list(string)
# print(s1[0],str(s1[len(string)//2]),s1[-1])


# l1=[]
# i=0
# while i==0:
#     a = random.randint(5, 100)
#     if a%5==0:
#         l1.append(a)
#     if len(l1)==3:
#             break
# print(l1)


# import textwrap
# string='ABCDEFGHIJKLIMNOQRSTUVWXYZ'
# a=textwrap.TextWrapper(width=4)
# b=a.wrap(text=string)
# for i in b:
#     print(i)


# n,m=map(int,input().split())
# for i in range(1,n,2):
#     print((".|."*i).center(m,"-"))
# string="WELCOME"
# print(string.center(m,"-"))
# for j in reversed(range(1,n,2)):
#     print((".|." * j).center(m, "-"))


# n=int(input("enter a number: "))
# w=len(bin(n)[2:])
# for i in range(1,n+1):
#     decimal=str(i)
#     a=list(oct(i))
#     str1=''
#     for j in a[2:]:
#         str1=str1+j
#     b=list(hex(i))
#     str2=''
#     for k in b[2:]:
#         str2=str2+k
#     c=list(bin(i))
#     str3=''
#     for m in c[2:]:
#         str3=str3+m
#     print(decimal.rjust(w),str1.rjust(w),str2.upper().rjust(w),str3.rjust(w))


# import string
# n=int(input())
# a=string.ascii_lowercase
# l1=[]
# for i in range(n):
#     x=a[i]
#     l1.append(x)
# alphabets=list(range(n))
# index=alphabets[:-1]+alphabets[::-1]
# for i in index:
#     z=l1[-(i+1):]
#     y=z[::-1]+z[1:]
#     result='-'.join(y).center(4*n-3,'-')
#     print(result)
# print(" ".join("".center(5,"*")))

# import string
# n=int(input())
# alph=string.ascii_lowercase
# l=alph[:n]
# len=(2*n-1)+(2*n-2) #edcbabcde(2n-1) & -(2n-2)
# for i in reversed(range(1,n)):
#     p="-".join(l[i:][::-1]+l[i+1:])
#     print(p.center(len))
# for i in range(n):
#     p="-".join(l[i:][::-1]+l[i+1:])
#     print(p.center(len))

# m=int(input("enter the range number: "))
# w=len(bin(m)[:3])
# for i in range(m//2):
#     print("*".rjust(w),end=" ")
#     print("*".rjust((i*2)+1))
# print("==----------------->>>".rjust(2*m+1))
# for i in reversed(range(m//2)):
#     print("*".rjust(w),end=" ")
#     print("*".rjust((i*2)+1))


# m=int(input("enter the range number: "))
# w=len(bin(m)[:6])
# str1=""
# for i in range(0,7):
#     for j in range(0,7):
#         if (((j==1 or j==5) and i!=0 and i!=6)  or ((i==0 or i==6) and j>1 and j<5)):
#             str1=str1+"*"
#         else:
#             str1=str1+" "
#     str1=str1+"\n"
# print(str1)

# result="1 w 2 r 3g"
# result=list(map(str,result.split(" ")))
# print(result)
# str=''
# for i in result:
#     str=str+i.capitalize()+" "
# print(str)


# s="DHRUVI"
# vowels="AEIOU"
# kevin=0     #for consonents
# stuart=0    #for vowels
# for i in range(len(s)):
#     if s[i] not in vowels:
#         stuart=stuart+len(s[i:])
# print(stuart)
# for j in range(len(s)):
#     if s[j] in vowels:
#         kevin=kevin+len(s[j:])
# print(kevin)
# if kevin>stuart:
#     print("kevin won")
# elif kevin<stuart:
#     print("stuart won")
# else:
#     print("Draw")
