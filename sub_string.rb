def sub_string(word, dictionary)
  count = {}

  dictionary.each do |dict_word|
    matches = word.scan(/#{dict_word}/).length
    count[dict_word] = matches if matches > 0
  end

  return count
end

def main
  print "Enter the string: "
  word = gets.chomp.downcase
  dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
  puts sub_string(word, dictionary)
end

main
