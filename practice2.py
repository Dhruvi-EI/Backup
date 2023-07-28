#Given a non-negative integer x, return the square root of x rounded down to the nearest integer.
# The returned integer should be non-negative as well.
x=int(input("enter a number: "))
def sqrt(x):
    num=x/2
    n=0
    while num!=n:
        n=num
        num=(x/n+n)/2
    return (num.__floor__())

ans=sqrt(x)
print(ans)





