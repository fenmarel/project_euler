import time

def nth_prime(n):
    primes = [2]
    num = 3
    while len(primes) < n:
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
    return primes[-1]
            
start = time.time()
print nth_prime(10001)
print "finished in %.2f secs" % float(time.time() - start)

