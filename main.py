import time
from plyer import notification

if __name__=="__main__":
    while True:
        notification.notify(
         title="**Please Drink Water**",
         message="You need to drink water for better health",
            timeout=2
        )
        time.sleep(60*60)