# look for a better solution
def prime(n)
  result = []
  (1..n).to_a.each do |num|
    divisible = false
    (2..num-1).to_a.each do |i|
      divisible = true if num % i == 0
    end
    result << num if !divisible
  end
  nums = (1..n).to_a

  result
end

prime(20)
# File.open(ARGV[0]).each_line do |line|
#   puts prime(line.chomp.to_i).join(",")
# end