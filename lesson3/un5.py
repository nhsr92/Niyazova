def sum_num():
    m = 0
    while True:
        in_list = input('Введите число или R для выхода: ').split()
        for num in in_list:
            if num == 'R':
                return m
            else:
                try:
                    m += int(num)
                except ValueError:
                    print('Чтобы выйти из программы нажмите "R" - ')
        print(f'Сумма чисел = {m}')


print(sum_num())
