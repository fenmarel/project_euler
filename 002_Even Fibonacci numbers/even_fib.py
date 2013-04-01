def fib_even_sum(stop, one = 1, two = 2, acc = 0):
    current = one + two
    if two > stop:
        return acc
    elif two % 2 == 0:
        return fib_even_sum(stop, two, one + two, acc + two)
    else:
        return fib_even_sum(stop, two, one + two, acc)
