import collections
stack=collections.deque()
stack.append(10)
stack.append(20)
stack.append(30)
for i in range(len(stack)):
    stack.pop()
print(len(stack))


import queue
# stack=queue.LifoQueue()
# stack.put(10)
# stack.put(20)
# stack.put(30)
# stack.get()
# stack.get()
# stack.get()
# stack.get(timeout=1)
# print(stack)