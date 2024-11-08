def count_words(string)
    #Todas as letras minúsculas
    string = string.downcase
    #Substituindo characteres especias
    string = string.gsub(/[^a-z\s]/, "")
    #Transformando em lista
    lista = string.split(" ")
    mapa = {}
    lista.each do |char|
        mapa[char] = 0
    end
    lista.each do |char|
        mapa[char] += 1
    end
    return mapa
end

puts count_words("A man, a plan, a canal -- Panama")
puts count_words "Doo bee doo bee doo"
