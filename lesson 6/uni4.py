class Car:
    def __init__(self, speed, color, name, is_police):
        self.speed = speed
        self.color = color
        self.name = name
        self.is_police = is_police

    def go(self):
        return f'{self.name} движется'

    def stop(self):
        return f'{self.name} останавливается'

    def turn_right(self):
        return f'{self.name} повернул на право'

    def turn_left(self):
        return f'{self.name} повернул на лево'

    def show_speed(self):
        return f'Текущая скорость {self.name} - {self.speed}'


class TownCar(Car):
    def __init__(self, speed, color, name, is_police):
        super().__init__(speed, color, name, is_police)

    def show_speed(self):
        print(f'Текущая скорость городского автомобиля {self.name} - {self.speed}')

        if self.speed > 40:
            return f'Скорость {self.name} выше положенного для городского авто!'
        else:
            return f'Скорость {self.name} не превышает нормы!'


class SportCar(Car):
    def __init__(self, speed, color, name, is_police):
        super().__init__(speed, color, name, is_police)


class WorkCar(Car):
    def __init__(self, speed, color, name, is_police):
        super().__init__(speed, color, name, is_police)

    def show_speed(self):
        print(f'Текущая скорость рабочей машины {self.name} составляет - {self.speed}')

        if self.speed > 60:
            return f'Скорость {self.name} !'


class PoliceCar(Car):
    def __init__(self, speed, color, name, is_police):
        super().__init__(speed, color, name, is_police)

    def police(self):
        if self.is_police:
            return f'{self.name} принадлежит полиции!'
        else:
            return f'{self.name} не принадлежит полиции!'


Porsche = SportCar(100, 'Красный', 'Porsche', False)
Volvo = TownCar(30, 'Серый', 'Volvo', False)
Renault = WorkCar(70, 'Белый', 'Renault', True)
Hyundai = PoliceCar(100, 'Синий', 'Hyundai', True)
print(f'Автомобиль {Renault.turn_left()}')
print(f'Если {Volvo.turn_right()}, то {Porsche.stop()}')
print(f'{Renault.go()} со скоростью: {Renault.show_speed()}')
print(f' Цвет {Renault.name} - {Renault.color}')
print(f'{Porsche.name} полицейская машина? Нет это не так!')
print(f'{Hyundai.name} полицейская машина? Да, верно!')
print(Porsche.show_speed())
print(Volvo.show_speed())
print(Hyundai.police())
print(Hyundai.show_speed())
