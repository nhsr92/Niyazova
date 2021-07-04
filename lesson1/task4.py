number = int(input('Введите положительное число - '))
maximum = number % 10
n = number
while n > 0:
    digit = n % 10
    if digit > maximum:
        maximum = digit
    if digit == 9:
        break
    n = n // 10
print(n)
print(f"'Самая большая цифра в числе {number} равна {maximum}'")
