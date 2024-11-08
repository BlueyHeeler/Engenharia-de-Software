def palindrome?(string)
   #colocando o texto inteiro em minúsculo
   string = string.downcase
   #removendo todos os characteres não alfabéticos
   string = string.gsub(/[^a-z]/, "")
   #string reversa
   reverse_string = string.reverse
   #retorno
   return string == reverse_string
end

puts palindrome?("A man, a plan, a canal -- Panama") #=> true
puts palindrome?("Madam, I'm Adam!") # => true
puts palindrome?("Abracadabra") # => false (nil is also ok)


