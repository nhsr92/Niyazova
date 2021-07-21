"""rus = {"One": "Один", "Two": "Два", "Three": "Три", "Four": "Четыре"}
with open('f4.txt', 'w') as f1:
    with open('f_3.txt', 'r') as f2:
        f1.write(str([line.replace(line.split()[0], rus.pop(line.split()[0])) for line in f2]))"""

rus = {'One': 'Один', 'Two': 'Два', 'Three': 'Три', 'Four': 'Четыре'}
new_file = []
with open('f_3.txt.', 'r') as file_obj:
    for d in file_obj:
        d = d.split(' ', 1)
        new_file.append(rus[d[0]] + ' ' + d[1])
    print(new_file)

with open('f4.txt', 'w') as file_obj_2:
    file_obj_2.writelines(new_file)
