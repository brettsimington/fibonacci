require 'Benchmark'

time = Benchmark.reltime do |
  @cache = {}; @cache[1] = 1; @cache[2] = 1
  n = 49
  def fibonacci(n)
    @cache[n] ||= fibonacci(n-1) + fibonacci(n-2)
end

puts "#{n}'s fibonacci value is #{Fibonacci(n)}"
end

puts "Time elapsed #{time} seconds"