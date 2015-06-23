File.open(ARGV[0]).each_line do |line|
  puts line.split.map { |word| word[0], word[-1] = word[-1], word[0]; word }.join(' ')
end
