import time

def sum_primes(n):
    primes = [2]
    num = 3
    while primes[-1] < n:
        prime = True
        for p in primes:
            if num % p == 0:
                prime = False
                break
            elif p > num**0.5:
                break
        if prime:
            primes.append(num)
        num += 2
    return sum(primes[:-1])
            
start = time.time()
print sum_primes(2000000)
print "finished in %.2f secs" % float(time.time() - start)

