def fib(num)
  return 0 if num == 0
  return 1 if num == 1
  fib_nums = [0,1]; i = 0
  while i < num
    i += 1
    new_num = fib_nums[0] + fib_nums[1]
    fib_nums.shift
    fib_nums << new_num
  end
  fib_nums[0]
end

File.open(ARGV[0]).each_line do |line|
  puts fib(line.chomp.to_i)
end