import sys
import subprocess

tickers = int(sys.argv[1])

print("launching %s tickers" % tickers)

for i in range(1, tickers+1):
    subprocess.run(["arvados-cwl-runner", "--no-wait", "--name=tick-tock-test-%s" % i, "tordo-7fd4e-2bz5gaoev4dnjn6", "--ticksPerStep=3"])

print("done")
