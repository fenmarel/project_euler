import time

def prime_factor(n):
    start = time.time()
    factors = []
    def factor(x):
        for p in range(2, int(n**0.5 + 10)):
            if x % p == 0:
                factors.append(p)
                return factor(x/p)
    factor(n)
    print "finished in %.2f secs" % float(time.time() - start)
    return factors

