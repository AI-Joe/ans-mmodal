import os

if os.getenv('STRING_ONE').isalpha() and os.getenv('STRING_TWO').isalpha():
    if sorted(os.getenv('STRING_ONE')) == sorted(os.getenv('STRING_TWO')):
        print(True)
    else:
        print(False)
else:
    print(False)

