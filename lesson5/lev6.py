subj = {}
with open('f6.txt', 'r') as u:
    for line in u:
        lesson, hour_string = line.split(':')
        current_number = ''
        sum_l = 0
        for symbol in hour_string:
            if symbol.isdigit():
                current_number += symbol
            else:
                if current_number.isdigit():
                    sum_l += int(current_number)
                    current_number = ''
        subj[lesson] = sum_l


print(f"{subj}")
