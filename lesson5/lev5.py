def summary():
    try:
        with open('f5.txt', 'w+') as n:
            line = input('Введите цифры через пробел - \n')
            n.writelines(line)
            numb = line.split()

            print(sum(map(int, numb)))

    except ValueError:
        print('Ошибка')


summary()
