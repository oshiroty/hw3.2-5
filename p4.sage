%python
def det(A):
    size = len(A)
    if (size > 2):
        i = 1
        j = 0
        sum = 0
        while j <= size - 1:
            res = {}
            c = 1
            while c < size:
                k = 0
                res[c] = []
                while k < size:
                    if k == j:
                        u = 0
                    else:
                        res[c].append(A[c][k])
                    k += 1
                c += 1
            new_A = [res[x] for x in res]
            sum += i * A[0][j] * det(new_A)
            i *= -1
            j += 1
        return sum
    else:
        return A[0][0] * A[1][1] - A[0][1] * A[1][0]

%cython
def det2(A):
    size = len(A)
    if (size > 2):
        i = 1
        j = 0
        sum = 0
        while j <= size - 1:
            res = {}
            c = 1
            while c < size:
                k = 0
                res[c] = []
                while k < size:
                    if k == j:
                        u = 0
                    else:
                        res[c].append(A[c][k])
                    k += 1
                c += 1
            new_A = [res[x] for x in res]
            sum += i * A[0][j] * det2(new_A)
            i *= -1
            j += 1
        return sum
    else:
        return A[0][0] * A[1][1] - A[0][1] * A[1][0]
