user_time = int(input('Введите секунды - '))
hh = user_time // 3600
mm = user_time // 60 % 60
ss = mm // 60
print(f"{hh:>02}:{mm:>02}:{ss:>02}")
