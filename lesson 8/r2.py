class Elimination:
    def __init__(self, dividend, divisor):
        self.dividend = dividend
        self.divisor = divisor

    @staticmethod
    def division_by_zero(dividend, divisor):
        try:
            return dividend / divisor
        except ZeroDivisionError:
            return f"Деление на ноль запрещено!"


div = Elimination(50, 25)
print(Elimination.division_by_zero(10, 5))
print(Elimination.division_by_zero(10, 2))
print(div.division_by_zero(125, 0))
