class MultiplicationTable
  def self.get_table(num)
    numbers = []
    result = ""
    i = 0
    while i < 12
      i += 1
      numbers << i * num
    end
    result << numbers[0].to_s
    numbers[1..-1].each do |number|
      result << " " * [3,2,1][number.to_s.length-1] + number.to_s
    end
    result
  end
end

(1..12).to_a.each do |n|
  puts MultiplicationTable.get_table(n)
end

