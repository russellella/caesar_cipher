def caesar_cipher(string, shift)
  array = string.bytes
  new_array = array.map do |n| 
    if n.between?(59, 90) && ((n + shift) > 90)
        n + shift - 26
    elsif n.between?(97, 122) && ((n + shift) > 122)
        n + shift - 26
    else
      n + shift
    end
  end
  string = new_array.map! { |n| n.chr }.join
  p string
end