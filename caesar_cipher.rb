def caesar_cipher(string, shift)
  array = string.bytes
  p array
  array.map! { |n| n + shift }
  p array

  array.collect! { |n| (n > 122) ? n - 26 : n }
  p array
  array.collect! { |n| n.chr }
  # Need to join array together back into a string here
  p array
end

caesar_cipher("abcxyz", 5)