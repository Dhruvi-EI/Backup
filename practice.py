#see whether the number is power of 2.
n = int(input("enter a number: "))
def integer(n):
    if (n==0):
        return False
    elif (n%2!=0):
        return False
    else:
        while (n%2==0):
            n = n / 2
            if n==1:
                return True
        return False
ans=integer(n)
print(ans)

# n = int(input("enter a number: "))
# def integer(n):
#     if (n == 0):
#         return False
#     elif (n%2!=0):
#         return False
#     else:
#         while (pow(2,n)%2==0):
#             n=n/2
#             if pow(2,n)%2==1:
#                 return True
#             return  False
#
# ans=integer(n)
# print(ans)

