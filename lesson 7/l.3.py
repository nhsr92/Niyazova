class Cell:
    def __init__(self, number):
        self.number = int(number)

    def __str__(self):
        return f'Результат операции {self.number * "*"}'

    def __add__(self, other):
        return Cell(self.number + other.number)

    def __sub__(self, other):
        return self.number - other.number if (self.number - other.number) > 0 \
            else print('Отрицательный результат!')

    def __mul__(self, other):
        return Cell(int(self.number * other.number))

    def __truediv__(self, other):
        return Cell(round(self.number // other.number))

    def make_order(self, cells_in_series):
        series = ''
        for i in range(int(self.number / cells_in_series)):
            series += f'{"*" * cells_in_series} \\n'
        series += f'{"*" * (self.number % cells_in_series)}'
        return series


cells1 = Cell(1)
cells2 = Cell(2)
print(cells1)
print(cells2)
print(cells1 + cells2)
print(cells1 - cells2)
print(cells2.make_order(5))
print(cells1.make_order(10))
print(cells1 / cells2)
