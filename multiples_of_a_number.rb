File.open(ARGV[0]).each_line do |line|
  numbers = line.chomp.split(",")
  x = numbers[0].to_i
  n = numbers[1].to_i
  i = 0
  loop do
    if n * i >= x
      puts n * i; break
    end
    i += 1
  end
end