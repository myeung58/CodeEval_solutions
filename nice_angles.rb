content = File.readlines(ARGV[0]).map { |line| line.chomp }
content.each do |num|
  whole_and_frac = num.split(".")
  whole = whole_and_frac[0]
  frac = "0.#{whole_and_frac[1]}".to_f
  minute = ((frac * 3600) / 60)
  second = (minute - minute.floor) * 60
  minute < 10 ? minute = "0#{minute.to_i}" : minute = minute.to_i
  second < 10 ? second = "0#{second.to_i}" : second = second.to_i
  puts "#{whole}.#{minute}\'#{second}\""
end