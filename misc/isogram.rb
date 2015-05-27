# first solution
def is_isogram(string)
  return true unless string.length > 0
  arr = []
  result = true
  string.each_char do |char|
    result = false if arr.include?(char.downcase)
    arr << char.downcase
    break unless result
  end
  result
end

p is_isogram('abc') == true
p is_isogram('Aab') == false

# second solution
def is_isogram(string)
  string.downcase.split('').uniq.length == string.length
end

p is_isogram('abc') == true
p is_isogram('Aab') == false