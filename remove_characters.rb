def remove_characters sentence, targets
  look_up, result = {}, ''
  targets.delete(' ').each_char { |t| look_up[t] = true }
  sentence.each_char { |char| result << char unless look_up[char] }
  result
end

File.open(ARGV[0]).each_line do |line|
  line = line.chomp.split(',')
  puts remove_characters line[0], line[1]
end