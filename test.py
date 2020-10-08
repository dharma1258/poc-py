import sampletask
from time import sleep
r=sampletask.add.delay(3,5)
print(r)
sleep(10)
print(r.status)

