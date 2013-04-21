%python
def primes():
    res = [2]
    prime = True
    for i in range(3, 10000, 2):
        prime = True
        for j in range(3, i, 2):
            if i % j == 0:
                prime = False
                break
        if prime:
            res.append(i)
    return res

%cython
def primes2():
    res = [2]
    prime = True
    for i in range(3, 10000, 2):
        prime = True
        for j in range(3, i, 2):
            if i % j == 0:
                prime = False
                break
        if prime:
            res.append(i)
    return res
    
