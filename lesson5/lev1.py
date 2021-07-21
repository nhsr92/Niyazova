my_f = open('fail.txt.', 'w')
line = input('Введите текст -  \n')
while line:
    my_f.writelines(line)
    line = input('Введите текст - \n')
    if not line:
        break

my_f.close()
my_f = open('fail.txt.', 'r')
content = my_f.readlines()
print(content)
my_f.close()
