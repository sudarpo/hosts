import os

commandToRun = "/work/updateHostsFile.py --auto --nogendata --extensions porn fakenews gambling --output output"

#  --compress"
compressEnabled = os.getenv("COMPRESS", "0") # os.environ["SB_COMPRESS"]
if compressEnabled == "1":
    print("Env COMPRESS is set.")
    commandToRun = commandToRun + " --compress"
else:
    print("Env COMPRESS is not set.")

## --noupdate
updatedEnabled = os.getenv("UPDATE", "0")
if updatedEnabled == "1":
    print("Env UPDATE is set.")
else:
    print("Env UPDATE is not set.")
    commandToRun = commandToRun + " --noupdate"

print(commandToRun)
os.system(commandToRun)