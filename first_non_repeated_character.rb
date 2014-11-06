def first_non_repeat(str)
  char_frequencies = {}
  non_repeat = []
  str.each_char do |char|
    if char_frequencies[char] == nil
      char_frequencies[char] = 0
      non_repeat << char
    else
      char_frequencies[char] += 1
      non_repeat.delete(char)
    end
  end
  non_repeat[0]
end

content = File.open(ARGV[0]).each_line do |line|
  puts first_non_repeat(line.chomp)
end