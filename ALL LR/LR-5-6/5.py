import random
arr_size = int(input("Введите размер массива: "))
if arr_size < 2:
    print("Надо минимум 2 элемента.")
    exit()

my_array = [random.randint(1, 100) for _ in range(arr_size)]

print("Исходный массив:", my_array)

min_index = my_array.index(min(my_array))
max_index = my_array.index(max(my_array))

if min_index == max_index:
    print("Минимальный и максимальный элементы одинаковы.")
    print("Массив после обработки:", my_array)
    exit()

my_array[min_index], my_array[max_index] = my_array[max_index], my_array[min_index]

print("Массив после обработки:", my_array)
