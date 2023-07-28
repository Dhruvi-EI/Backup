import collections
q=collections.deque()
q.appendleft(10)
q.appendleft(20)
q.pop()
q.pop()
print(not q)

# import queue
# que=queue.PriorityQueue()
# que.put(10)
# que.put(20)
# que.put(30)
# que.get()
# que.get()
# que.get()
# que.get(timeout=1)
