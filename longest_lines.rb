def find_longest(limit, lines)
  sorted_lines = lines.sort_by do |line|
    line.length
  end
  sorted_lines.reverse[0...limit].each do |line|
    puts line
  end
end

file_content = []
File.readlines(ARGV[0]).each do |line|
  file_content << line.chomp
end
limit = file_content[0].chomp.to_i
lines = file_content[1..-1]

find_longest(limit, lines)
