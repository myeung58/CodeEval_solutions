def roller_coaster(str)
  result = []
  upper = true
  str.each_char do |char|
    if upper && char < "z" && char > "A"
      upper = false
      result << char.upcase
    elsif !upper && char < "z" && char > "A"
      upper = true
      result << char.downcase
    else
      result << char
    end
  end
  result.join("")
end

File.open(ARGV[0]).each_line do |line|
  puts roller_coaster(line.chomp)
end