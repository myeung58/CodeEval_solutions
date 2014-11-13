def rightmost_char(str, match)
  i = str.length-1
  while i >= 0
    if str[i] == match
      return i
    end
    i -= 1
  end
  -1
end

File.open(ARGV[0]).each_line do |line|
  line = line.chomp.split(",")
  string = line[0]
  match = line[1]
  puts rightmost_char(string, match)
end