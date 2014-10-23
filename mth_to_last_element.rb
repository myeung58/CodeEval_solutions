File.open(ARGV[0]).each_line do |line|
  line = line.chomp.split(" ")
  num = line.pop.to_i
  puts line.reverse[num-1]
end