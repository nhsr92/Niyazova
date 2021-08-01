class Data:
    def __init__(self, day_month_year):
        self.day_month_year = str(day_month_year)

    @classmethod
    def numeric(cls, day_month_year):
        my_date = []
        for i in day_month_year.split():
            if i != '-':
                my_date.append(i)
        return int(my_date[0]), int(my_date[1]), int(my_date[2])

    @staticmethod
    def valid(day, month, year):

        if 1 <= day <= 31:
            if 1 <= month <= 12:
                if 2021 >= year >= 0:
                    return f'Все в порядке!'
                else:
                    return f'Неверный год'
            else:
                return f'Неверный месяц'
        else:
            return f'Неверный день'

    def __str__(self):
        return f'Текущая дата {Data.numeric( self.day_month_year )}'


today = Data('21 - 7 - 2021')
print(today)
print(Data.valid(11, 1, 2021))
print(today.valid(22, 13, 2018))
print(Data.valid(6, 9, 2012))
print(Data.numeric('21 - 7 - 2015'))
print(today.numeric('15 - 5 - 2019'))
