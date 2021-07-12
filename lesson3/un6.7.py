def int_func(word):
    latin_char = 'qwertyuiopasdfghjklzxcvbnm'
    return word.title() if not set(word).difference(latin_char) else False


words = input('Введите слова разделяя их пробелами - ').split()
for n in words:
    result = int_func(n)
    if result:
        print(int_func(n), '')
