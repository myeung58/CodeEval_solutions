class SumOfPrimes

  def sum
    num = 2
    count = 0
    sum = 0
    while count < 1000
      if is_prime(num)
        sum += num
        count += 1
      end
      num += 1
    end
    sum
  end

  private

  def is_prime(num)
    (2...num).to_a.each do |n|
      return false if num % n == 0
    end
    true
  end

end

sum_of_primes = SumOfPrimes.new
puts sum_of_primes.sum
