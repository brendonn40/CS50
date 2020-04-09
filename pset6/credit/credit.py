from cs50 import get_int,get_string
from sys import exit

x=get_string("Number: ")
len_card=len(x)
if len_card <13 or len_card> 16:
    print("INVALID")
    exit(1)
checksum=0


for i in range(len_card-2,-1,-2):
    if(int(x[i]) * 2 > 9):
        checksum += (int(x[i]) *2 ) -9
    else:
        checksum += int(x[i]) * 2

for k in range(len_card-1,-1,-2):
    checksum += int(x[k])


if checksum%10 == 0:
    if x[0:2] == "34" or x[0:2] == "37" and len_card == 15:
        print("AMEX")
    elif x[0:2] in ["51","52","53","54","55"]:
        print("MASTERCARD")
    elif x[0] == "4" and len_card == 13 or len_card == 16:
        print("VISA")
    else:
        print("INVALID")
else:
    print("INVALID")