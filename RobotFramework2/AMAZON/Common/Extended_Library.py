import random
import datetime

def Random():
    L1=['Books','Purses','Footwear']
    result=random.choice(L1)
    return result

def Selectdate(d1):
    current_time = datetime.datetime.now()
    DATE=current_time.day+int(d1)
    DATE=str(DATE)
    return DATE
