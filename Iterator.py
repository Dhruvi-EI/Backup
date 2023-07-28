# list=["dhruvi", "virani", "21"]
# a=iter(list)
# print(next(a))
# print(next(a))
# print(next(a))

class iteration:
    def __iter__(self):
        self.a=1
        return self

    def __next__(self):
        x=self.a
        self.a+=1
        return x
myclass=iteration()
list=iter(myclass)
print(next(list))