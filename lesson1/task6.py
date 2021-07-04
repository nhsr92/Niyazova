# import math
# start_km = 4
# last_km = 6
# print(math.ceil(math.log(last_km / start_km, 1.1)) + 1)

days = 1
start_km = float(input('Начало(старт) - '))
last_km = float(input('Конец(финал) - '))
print(f'{days}день:{start_km:.3f}')
if start_km <= 0 or last_km < 0:
    print('Результат должен быть больше нуля! Старт = 0!')
else:
    while start_km < last_km:
        start_km = start_km * 1.1
        days = days + 1
        print(f'{days} день:{start_km:.3f}')
    print(f'Спортсмен добьется результата за {days} дней')
