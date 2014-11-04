def find_double_squares(int)
  arr = []
  result = 0
  (0..Math.sqrt(int)).to_a.each { |i| arr << i**2 if i**2 <= int }
  arr.each_with_index do |num, index|
    arr[index..-1].each do |n|
      result += 1 if num + n == int
    end
  end
  result
end

content = File.open(ARGV[0]).map { |line| line.chomp.to_i }
content[1..-1].each do |num|
  puts find_double_squares(num)
end