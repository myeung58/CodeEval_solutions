class ReadMore
  def self.check(str)
    if str.length <= 55
      str
    else
      shrink(str)
    end
  end

  private

  def self.shrink(str)
    str[0..39] + "... <Read More>"
  end
end

File.open(ARGV[0]).each_line do |line|
  puts ReadMore.check(line.chomp)
end