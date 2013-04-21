%python
def multiply_matrices(A, B):
    B_cols = zip(*B)
    return [[sum(a * b for a, b in zip(row_A, col_B)) for col_B in B_cols] for row_A in A]

%cython
def multiply_matrices2(A, B):
    B_cols = zip(*B)
    return [[sum(a * b for a, b in zip(row_A, col_B)) for col_B in B_cols] for row_A in A]
