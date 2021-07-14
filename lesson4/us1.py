def sal():
    try:
        time = float(input('Выработка в часах - '))
        rate = int(input('Ставка в руб.- '))
        bonus = int(input('Премия в руб.- '))
        result = time * rate + bonus
        print(f'Заработная плата сотрудника - {result}')
    except ValueError:
        return print('Ошибка')


print(sal())
