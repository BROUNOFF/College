
max_value = float('-inf')
min_value = float('inf')
h = 1

for i in range(1, 11):
    print(h, 'месяц')
    a = float(input())
    b = float(input())

    if max_value < a:
        max_value = a
    if min_value > b:
        min_value = b

    h += 1

print(max_value, min_value)