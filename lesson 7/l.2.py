class Manufacture:
    def __init__(self, size, growth):
        self.coat = size
        self.costume = growth

    def get_size(self):
        return round(self.coat / 6.5 + 0.5)

    def get_growth(self):
        return round(2 * self.costume + 0.3)

    @property
    def textile_full(self):
        return str(f'Всего израсходовали ткани - {round((self.coat / 6.5 + 0.5) + (2 * self.costume + 0.3))}')


class Coat(Manufacture):
    def __init__(self, size, growth):
        super().__init__(size, growth)
        self.square_c = round(self.coat / 6.5 + 0.5)

    def __str__(self):
        return f'Расход ткани на пальто {self.square_c}'


class Costume(Manufacture):
    def __init__(self, size, growth):
        super().__init__(size, growth)
        self.square_j = round(self.costume * 2 + 0.3)

    def __str__(self):
        return f'Расход ткани на костюм {self.square_j}'


coat = Coat(1, 2)
costume = Costume(1, 2)
print(coat)
print(costume)
print(coat.textile_full)
print(costume.textile_full)
print(costume.get_size())
print(costume.get_growth())
