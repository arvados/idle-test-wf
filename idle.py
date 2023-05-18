import time
import sys

ticks = int(sys.argv[1])

print("ticking %s times" % ticks)

for i in range(1, ticks+1):
    time.sleep(10)
    print("tick %s / %s" % (i, ticks))

print("done")
