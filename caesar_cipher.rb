def caesar_cipher(string, key)
    result = []
    lowerDict = "abcdefghijklmnopqrstuvwxyz".split("")
    upperDict = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".split("")
    string.split("").each do |x|
        if lowerDict.include?(x)
            result << lowerDict[(lowerDict.find_index(x)+key)%26]
        elsif upperDict.include?(x)
            result << upperDict[(upperDict.find_index(x)+key)%26]
        else
            result << x
        end
    end
    result.join("")
end

puts caesar_cipher("What a string!", 5)