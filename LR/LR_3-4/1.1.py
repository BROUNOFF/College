
x = float(input())
y = float(input())
s = float(input())

h = int((y - x) // s)

for i in range(1, h + 1):
    print(f'x = {x + i / 2}, y = {2 * x + i / 2}')