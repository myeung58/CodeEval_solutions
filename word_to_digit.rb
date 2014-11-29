class Converter
  DICT = {
    'zero' => 0,
    'one' => 1,
    'two' => 2,
    'three' => 3,
    'four' => 4,
    'five' => 5,
    'six' => 6,
    'seven' => 7,
    'eight' => 8,
    'nine' => 9
  }

  def self.word_to_digit(str)
    DICT[str]
  end
end

File.open(ARGV[0]).each_line do |line|
  num_words = line.chomp.split(";")
  result = []
  num_words.each do |num_word|
    result << Converter.word_to_digit(num_word)
  end
  puts result.join("")
end
