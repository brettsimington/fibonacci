require 'benchmark'

def fib_m(n, m = {})
  if n == 0 || n == 1
    return n
  end
  m[n] ||= fib_m(n-1, m) + fib_m(n-2, m)
end


def fib_n(n)
  if n == 0 || n == 1
    return n
  end
  fib_n(n-1) + fib_n(n-2)
end

def time(&block) 
  puts Benchmark.measure(&block) 
end

time {fib_m(14)}
time {fib_n(14)}