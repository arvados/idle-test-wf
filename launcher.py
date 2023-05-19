import sys
import subprocess
import time

tickers = int(sys.argv[1])

print("launching %s tickers" % tickers, flush=True)

for i in range(1, tickers+1):
    subprocess.run(["arvados-cwl-runner", "--no-wait", "--name=tick-tock-test-%s" % i, "tordo-7fd4e-2bz5gaoev4dnjn6", "--ticksPerStep=90"])

ticks=90*5
print("ticking", flush=True)

for i in range(1, ticks+1):
    time.sleep(10)
    print("tick %s / %s" % (i, ticks), flush=True)

print("done", flush=True)
