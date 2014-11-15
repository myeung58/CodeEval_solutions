def simple_sorting(arr)
  arr.map{|num| num.to_f}.sort
end

File.open(ARGV[0]).each_line do |line|
  puts simple_sorting(line.chomp.split(" ")).join(" ")
end