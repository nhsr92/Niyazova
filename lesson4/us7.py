def fact_gen(number):
    f_num = 1
    if number == 0:
        yield f'{number}! = 1'
    for i in range(1, number + 1):
        f_num *= i
        yield f'{i}! = {f_num}'


for el in fact_gen(int(input('Factorial number: '))):
    print(el)
