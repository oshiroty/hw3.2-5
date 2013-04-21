"""Timings found in README.md"""

%python
def sum_squares(n):
    return n * (n + 1) * (2 * n + 1) / 60

%cython
def sum_squares2(long n):
    return n * (n + 1) * (2 * n + 1) / 60
