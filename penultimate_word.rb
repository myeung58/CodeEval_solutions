def penultimate_word(str)
  words = str.split(" ")
  words[-2] if words.length > 1
end

File.open(ARGV[0]).each_line do |line|
  puts penultimate_word(line.chomp)
end