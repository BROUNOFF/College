
N = int(input())
total_area = 0.0
S = 0.0
i = 0

while i<N:
    length = float(input())
    width = float(input())
    area = round(length * width)
    total_area += area
    i += 1
    print(area)

print('total area =', total_area)