import os

if ''.join(reversed(os.getenv('STRING_ONE'))) == os.getenv('STRING_TWO'):
    print(True)
else:
    print(False)

