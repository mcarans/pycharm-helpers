import sys
import os

command = ' '.join(sys.argv[1:])
print('Running %s' % command)
os.system(command)

