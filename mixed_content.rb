def separate(str)
  items = str.split(",")
  nums = []
  words = []
  items.each do |item|
    if item[0] > "A" && item[0] < "z"
      words << item
    else
      nums << item
    end
  end
  if nums.empty? || words.empty?
    words.join(",") + nums.join(",")
  else
    [words.join(","), nums.join(",")].join("|")
  end
end

File.open(ARGV[0]).each_line do |line|
  puts separate(line.chomp)
end
