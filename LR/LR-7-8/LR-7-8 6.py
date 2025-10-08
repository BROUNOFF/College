my_string = input("Введите строку: ")
if len(my_string) < 3:
        print("Строка слишком короткая.")
else:
        print('Каждая тертья, шестая и т.д: ', my_string[2::3])