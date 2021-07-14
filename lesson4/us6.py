from itertools import count
from itertools import cycle

for el in count(int(input('Введите стартовое число - '))):
    if el > 10:
        break
    else:
        print(el)

my_list = [True, 'ABC', None]
iter_ = cycle(my_list)
d = 0
for iter_ in cycle(my_list):
    if d > 10:
        break
    d += 1
    print(f'{iter_}')
