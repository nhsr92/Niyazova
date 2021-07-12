def deg(dg_1, dg_2):
    if dg_2 == 0:
        print('Не делится на ноль!')
        exit(5)
    return dg_1 / dg_2


a = int(input('Введите делимое - '))
b = int(input('Введите делитель - '))
print(deg(a, b))
