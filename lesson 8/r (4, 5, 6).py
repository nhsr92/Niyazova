class EquipWarehouse:
    def __init__(self):
        self.equipment = []

    def add_equip(self, type_equip):
        name = input(f'Введите наименование ')
        cost = int(input(f'Введите цену за ед '))
        count = int(input(f'Введите количество '))

        if type_equip == 1:
            unit = Printer(name, cost, count)
        elif type_equip == 2:
            unit = Scanner(name, cost, count)
        elif type_equip == 3:
            unit = Copier(name, cost, count)
        else:
            print(f'Неизвестный тип техники')
            return

        self.equipment.append(unit)
        print(f'Текущий список:')
        for i in self.equipment:
            print(f'{i}')

    def reception(self):
        try:
            what_to_add = input(f'Если хотите добавить принтер нажмите 1\n'
                                f'Если хотите добавить сканер нажмите 2\n'
                                f'Если хотите добавить копир нажмите 3\n')

            self.add_equip(int(what_to_add))
        except ValueError:
            print(f'Ошибка ввода данных')

        print(f'Для выхода - s, продолжение - Enter')
        q = input(f'')
        if q == 's' or q == 'q':
            print('Весь склад')
            for i in self.equipment:
                print(f'{i}')
            return f'Выход'
        else:
            return EquipWarehouse.reception(self)


class Equipment:
    def __init__(self, name, price, quantity):
        self.name = name
        self.price = price
        self.quantity = quantity

    def __str__(self):
        return f'Устройство: {self.name} цена: {self.price} количество: {self.quantity}'


class Printer(Equipment):
    @staticmethod
    def get_function():
        return f'Печатает'

    def __str__(self):
        return f'Принтер: {self.name} Свойства: {self.get_function()}  цена: {self.price} количество: {self.quantity}'


class Scanner(Equipment):
    @staticmethod
    def get_function():
        return f'Сканирует'

    def __str__(self):
        return f'Сканер: {self.name} Свойства: {self.get_function()} цена: {self.price} количество: {self.quantity}'


class Copier(Equipment):
    @staticmethod
    def get_function():
        return f'Копирует'

    def __str__(self):
        return f'Копир: {self.name} Свойства: {self.get_function()} цена: {self.price} количество: {self.quantity}'


s = EquipWarehouse()
s.reception()
