gain = float(input("Введите значение выручки - "))
costs = float(input("Введите значение издержек - "))
result = gain - costs
if result > 0:
    print(f"Ваша фирма работает в прибыль {result}!")
    print(f"Рентабельность выручки фирмы - {result / gain:.2f}")
    personal = int(input("Какова численность сотрудников ваше фирмы? - "))
    print(f"Расчет прибыли на одного сотрудника состовляет - {result / personal:.3f}")
elif result < 0:
    print(f"Ваша фирма работает в убыток - {-result}")
else:
    print(f"Вы не в убытке, но и не в прибыли! У вас все получится!")
