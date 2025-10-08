a = input("Введите элементы массива: ")
t= a.split()
if not t:
    print("Массив пустой.")
    exit()

numbers = [int(x) for x in t]

if len(numbers) <= 1:
    print("Массив упорядочен по убыванию.")
    exit()

decreasing = True
for i in range(len(numbers) - 1):
    if numbers[i] < numbers[i + 1]:
        decreasing = False
        break

if decreasing:
    print("Массив упорядочен по убыванию.")
else:
    print("Массив не упорядочен по убыванию.")
