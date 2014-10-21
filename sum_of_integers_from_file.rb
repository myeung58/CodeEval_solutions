numbers = File.readlines(ARGV[0]).map { |line| line.chomp.to_i }
puts numbers.inject { |sum, v| sum += v }