class Road:
    _length = None
    _width = None
    _weigh = None
    _tickles = None

    def __init__(self, _length, _width):
        self._length = _length
        self._width = _width
        print(f'Для создания объекта нужно - {_length, _width} метров')

    def method(self):
        self._weigh = 25
        self._tickles = 1
        method = self._length * self._width * self._weigh * self._tickles/1000
        print(f'Нужно - {method} тонн для строительства дороги')


road = Road(20, 5000)
road.method()
