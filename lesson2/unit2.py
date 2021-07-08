list_my = list(input("Введите числа без пробелов - "))
for i in range(1, len(list_my), 1):
    list_my[i - 1], list_my[i] = list_my[i], list_my[i - 1]
print(list_my)
