def cipher(phrase , factor)
    arr = phrase.split("")
    factor > 26 ? factor %= 26 : factor

    arr.each_with_index do |x , ind|
        if x.downcase.between?("a" , "z")
            if (x.downcase.ord + factor) > "z".ord
               factor = ((x.downcase.ord + factor) - "z".ord) + "z".ord
               arr[ind] = (x.ord + factor).chr
            else
                arr[ind] = (x.ord + factor).chr
            end
        end
    end
    puts arr.join("")
    return arr.join("")

end  

cipher("Hi i am hecker LOL" , 28)