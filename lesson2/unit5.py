user_list = [9, 8, 7, 6, 5, 4, 3, 2, 1]
numbers = int(input('Введите новый элемент рейтинга в виде натурального числа'))
i = 0
for n in user_list:
    if numbers <= n:
        i += 1
user_list.insert(i, float(numbers))
print(user_list)
