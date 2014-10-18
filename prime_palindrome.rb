class PrimePalindromeCalculator
  def get_largest_pp(current_num)
    if is_palindrome?(current_num.to_s)
      is_prime?(current_num) ? current_num : get_largest_pp(current_num - 1)
    elsif current_num > 1
      get_largest_pp(current_num - 1)
    else
      "no prime palindrome"
    end
  end

  def is_prime?(num)
    is_prime = true
    is_prime = false if (num == 0 || num == 1)
    (2...num).to_a.each do |n|
      is_prime = false if num % n == 0
    end
    is_prime
  end

  def is_palindrome?(num)
    if num.length == 1
      true
    elsif num.length.even?
      mid_index = (num.length / 2)
      num[0...mid_index] == num[mid_index..-1].reverse ? true : false
    elsif num.length.odd?
      mid_index = (num.length / 2)
      num[0...mid_index] == num[mid_index+1..-1].reverse ? true : false
    end
  end
end

ppc = PrimePalindromeCalculator.new
puts ppc.get_largest_pp(1000)

