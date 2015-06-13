def new_line(sentence)
  # .capitalize changes every other characters to downcase by default, which should be avoided in this case
  sentence.split(' ').map{ |word| word[0].upcase + word[1..-1] }.join(' ')
end

File.open(ARGV[0]).each do |line|
  puts new_line(line.chomp)
end