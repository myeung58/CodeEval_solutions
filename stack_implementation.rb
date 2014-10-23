class Stack
  def initialize
    @stack = []
  end

  def push(item)
    @stack.push(item)
  end

  def pop
    @stack.pop
  end

  def show
    @stack
  end
end


File.open(ARGV[0]).each_line do |line|
  numbers = line.chomp.split(" ")
  stack = Stack.new
  numbers.each { |n| stack.push(n.to_i) }
  popped = 0
  result = []
  stack.show.length.times do
    popped.even? ? result << stack.pop : stack.pop
    popped += 1
  end
  puts result.join(" ")
end