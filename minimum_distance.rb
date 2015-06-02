def minimum_distance addresses
  addresses.map do |current_address|
    addresses.map { |address| (current_address.to_i - address.to_i).abs }.inject { |sum, i| sum += i }
  end.min
end

File.open(ARGV[0]).each_line do |line|
  puts minimum_distance line.split(" ")[1..-1]
end