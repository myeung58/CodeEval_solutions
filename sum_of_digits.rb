File.open(ARGV[0]).each_line do |line|
  digits = line.chomp.split("")
  sum = 0
  digits.each { |n| sum += n.to_i }
  puts sum
end