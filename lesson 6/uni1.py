from time import sleep


class TrafficLight:
    __color = ['Красный', 'Желтый', 'Зеленый']

    def running(self):
        t = 0
        while t < 3:
            print(f'{self.__color[t]}')
            if t == 0:
                sleep(7)
            elif t == 1:
                sleep(2)
            elif t == 2:
                sleep(5)
            t += 1


TrafficLight = TrafficLight()
TrafficLight.running()
