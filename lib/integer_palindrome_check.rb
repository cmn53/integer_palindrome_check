# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  return false unless number.is_a? Integer
  return false if number < 0
  return true if number < 10

  n = find_digits(number)
  i = n / 2

  i.times do |i|
    last = number / 10**i % 10
    first = number / 10**(n-i-1) % 10
    return false if first != last
  end
  return true
end

def find_digits(num)
  x = 1
  while num >= 10
    num /= 10
    x += 1
  end
  return x
end
