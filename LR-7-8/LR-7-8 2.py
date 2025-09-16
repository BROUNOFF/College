text = input("Введите строку: ")
count = 0
for char in text:
    if char.isdigit():
        count += 1
print("Количество цифр: ", count)
print(count)