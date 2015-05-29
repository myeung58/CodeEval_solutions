class GronsfeldCipher
  def initialize
    @char_rotation = File.read('gronsfeld_cipher_valid_chars.txt')
    @rotation_count = 1
  end
  # ugliest solution possible
  def decipher sequence, string
    string.split('').map.with_index do |char, index|
      if index >= sequence.length * (@rotation_count - 1)
        @rotation_count += 1 if index >= sequence.length * @rotation_count
        index -= sequence.length * @rotation_count
      end
      @char_rotation[@char_rotation.index(char) - sequence[index].to_i]
    end.join
  end
end

content = File.open(ARGV[0]).map { |line| line.chomp.split ';' }
content.each do |sequence, string|
  puts GronsfeldCipher.new.decipher(sequence, string)
end