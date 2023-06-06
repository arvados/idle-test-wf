import sys
import subprocess
import time

tickers = int(sys.argv[1])
arvwf = sys.argv[2]
tps = int(sys.argv[3])

print("launching %s tickers" % tickers, flush=True)

for i in range(1, tickers+1):
    subprocess.run(["arvados-cwl-runner", "--no-wait", "--disable-reuse", "--name=tick-tock-test-%s" % i, arvwf, "--ticksPerStep="+str(tps)])

ticks=tps*5
print("ticking", flush=True)

for i in range(1, ticks+1):
    time.sleep(10)
    print("tick %s / %s" % (i, ticks), flush=True)

print("done", flush=True)
