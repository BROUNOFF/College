text = input('введите ваш текст: ')
if text.startswith('abc'):
        print ('модифицированный текст: www' + text[3:])
else:
        print('модифицированный текст: ',text + 'zzz')