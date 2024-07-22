def caeser_cipher(word,key)
  result=""
  word.each_char do |char|
    if char >='a' and char <='z'
      temp = (char.ord - 'a'.ord+key)%26 + 'a'.ord
      result += temp.chr
    elsif char >='A' and char <='Z'
        temp = (char.ord - 'A'.ord+key)%26 + 'A'.ord
        result += temp.chr
    else
      result+=char
    end
  end
  return result

end


def main
  print "Enter the string: "
  word = gets.chomp
  print "Enter the key: "
  key = gets.chomp.to_i
  puts caeser_cipher(word,key)
end
main
