#lib/ceasar-cipher.rb

def cipher(phrase , factor)
    arr = phrase.split("")
    factor > 26 ? factor %= 26 : factor

    arr.each_with_index do |x , ind|
        if x.downcase.between?("a" , "z")
            if (x.downcase.ord + factor) > "z".ord
                arr[ind] = (((x.downcase.ord + factor) - "z".ord) + ("a".ord - 1)).chr
                arr[ind] = (arr[ind].ord - 32).chr unless x == x.downcase   
            else
                arr[ind] = (x.ord + factor).chr
            end
        end
    end
    puts arr.join("")
    return arr.join("")

end  


