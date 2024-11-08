def combine_anagrams(words)
    ans = []

    while words.length != 0
        atual = words[0]
        lista = [atual]
        words.delete(atual)

        words.each do |string|
            if string.chars.sort.join == atual.chars.sort.join
                lista << string
                words.delete(string)
            end
        end
        ans << lista
    end

    return ans
end

words = ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream']
puts combine_anagrams(words).inspect

