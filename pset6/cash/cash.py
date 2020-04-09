from cs50 import get_float
change=-1
while change < 0:
    change = get_float("Change owed: ")

change=round(change*100);
coins=change//25
change=change%25
coins+=change//10
change=change%10
coins+=change//5
change=change%5
coins+=change//1

print(f"{coins}")