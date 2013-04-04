import time

def euler9(sum_abc=1000):
    for i in range(1, sum_abc - 2):
        for j in range(1, sum_abc - 2):
            k = (sum_abc - i - j)
            if (i**2 + j**2 == k**2):
                return "numbers: %i, %i, %i \nproduct: %i" \
                       % (i, j, k, i*j*k)

start = time.time()
print euler9()
print "finished in %.2f secs" % float(time.time() - start)
