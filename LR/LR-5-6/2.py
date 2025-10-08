import random

start_range = int(input("начало диапазона: "))
end_range = int(input("конец диапазона: "))

a = [random.randint(start_range, end_range) for _ in range(20)]
b = sum(1 for i in range(1, len(a), 2) if a[i] % 2 == 0)
d = 1
c = 0

for i in range(len(a)):
    if a[i] % 2 != 0:
            d *= a[i]

    for i in range(len(a)):
        c += a[i]
print(a)
print(b)
print(d)
print(c)

