def my_func1(x, y):
    if x < 0 or y > 0:
        return f'Ошибка!'
    return round(x ** y, 3)


def my_func2(x, y):
    x, y = float(x), int(y)
    if x >= 0 >= y:
        result = 1
        for _ in range(abs(y)):
            result *= 1 / x
        return f'Возведение X в степени Y равен: {round(result, 3)}'
    else:
        return f'Что-то пошло не так!'


a = 2
b = -2
print(my_func1(a, b))
print(my_func2(a, b))
