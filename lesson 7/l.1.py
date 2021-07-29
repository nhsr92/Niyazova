class Matrix:
    def __init__(self, list_1, list_2):
        self.my_mat = [list_1, list_2]
        self.list_1 = list_1
        self.list_2 = list_2

    def __add__(self):
        my_mat = [[1, 3, 5],
                  [1, 3, 5],
                  [1, 3, 5]]

        for t in range(len(self.list_1)):

            for d in range(len(self.list_2[t])):
                my_mat[t][d] = self.list_1[t][d] + self.list_2[t][d]

        return str('\n'.join(['\t'.join([str(d) for d in t]) for t in my_mat]))

    def __str__(self):
        return str('\n'.join(['\t'.join([str(d) for d in t]) for t in self.my_mat]))


my_matrix = Matrix([[3, 22, 15],
                    [8, 19, 31],
                    [33, 35, 7]],
                   [[28, 6, 1],
                    [3, 5, 88],
                    [44, 2, 79]])

print(my_matrix.__add__())
