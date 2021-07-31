class ComplexNumber:
    def __init__(self, a, b, *args):
        self.a = a
        self.b = b
        self.c = 'a + b * n'

    def __add__(self, complex):
        print(f'Сумма c_1 и c_2 равна')
        return ComplexNumber(self.a+complex.a, self.b+complex.b)

    def __mul__(self, complex):
        print(f'Произведение c_1 и c_2 равно')
        return ComplexNumber(self.a*complex.a, self.b*complex.b)

    def __str__(self):
        return f'c = {self.a} + {self.b}'


c_1 = ComplexNumber(3, 1)
c_2 = ComplexNumber(2, 2)
print(c_1)
print(c_2)
print(c_1 + c_2)
print(c_1 * c_2)
