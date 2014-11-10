def interrupted_bubble_sort(arr, interruption)
  iteration_count = 0
  loop do
    swapped = false
    (arr.length-1).times do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swapped = true
      end
    end
    iteration_count += 1
    break if !swapped
    break if iteration_count == interruption
  end
  arr
end

File.open(ARGV[0]).each_line do |line|
  line = line.chomp.split("|")
  arr = line[0].split(" ").map { |num_string| num_string.to_i }
  interruption = line[1].strip.to_i
  puts interrupted_bubble_sort(arr, interruption).join(" ")
end