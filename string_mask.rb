def masked word, sequence
  result = ''
  word.each_char.with_index do |char, i|
    result << char.upcase if sequence[i] == '1'
    result << char.downcase if sequence[i] == '0'
  end
  result
end

File.open(ARGV[0]).each_line do |line|
  line = line.chomp.split
  puts masked(line[0], line[1])
end