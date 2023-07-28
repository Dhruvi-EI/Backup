#Given an integer num, repeatedly add all its digits until the result has only one digit, and return it.
num=int(input("enter a number: "))
def Addition(num):
    while num>9:
        num = num % 10 + num // 10
        if num>0:
            num = num % 10 + num // 10
    return num
ans=Addition(num)
print(ans)

# n=int(input("enter a number: "))
# def addition(n):
#     if n%9==0:
#         return n
#     else:
#         return n%9
# ans=addition(n)
# print(ans)





