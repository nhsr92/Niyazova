with open('sal.txt', 'r+') as val:
    sal = []
    low_sal = []
    my_list = val.read().split('\n')
    for i in my_list:
        v = i.split()
        if int(v[1]) < 20000:
            low_sal.append(v[0])
        sal.append(v[1])
print(f'Оклад меньше 20.000 - {low_sal}, средний оклад - {sum(map( int, sal )) / len( sal )}')
