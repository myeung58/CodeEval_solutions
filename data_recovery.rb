def recover(words, sequence)
  result = []
  missing_num = 0
  sequence.map! { |n| n.to_i }
  (1..sequence.length + 1).to_a.each do |n|
    missing_num = n unless sequence.include?(n)
  end
  words[0...sequence.length].each_with_index do |word, index|
    result[sequence[index].to_i - 1] = word
  end
  result[missing_num - 1] = words[-1]
  result.join(" ")
end

content = File.readlines(ARGV[0]).each do |line|
  line = line.chomp.split(";")
  puts recover(line[0].split(" "), line[1].split(" "))
end

