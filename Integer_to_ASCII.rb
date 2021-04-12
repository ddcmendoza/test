
class Integer_to_ASCII
    
    def method(i)
        #map
        @map ={
            '1' => 'A',
            '2' => 'B',
            '3' => 'C',
            '4' => 'D',
            '5' => 'E',
            '6' => 'F',
            '7' => 'G',
            '8' => 'H',
            '9' => 'I',
            '10' => 'J',
            '11' => 'K',
            '12' => 'L',
            '13' => 'M',
            '14' => 'N',
            '15' => 'O',
            '16' => 'P',
            '17' => 'Q',
            '18' => 'R',
            '19' => 'S',
            '20' => 'T',
            '21' => 'U',
            '22' => 'V',
            '23' => 'W',
            '24' => 'X',
            '25' => 'Y'   
        }
        # at 0 no value should be given
        if i == 0
            "Invalid number"
        end
        num_char = (Math.log(i,26).floor())
        placeholder = i
        res = ""
        until num_char < 0
            tmp =  (placeholder / (26 ** num_char)).floor

            char = (placeholder % (26 **num_char) == 0)?  'Z': @map[tmp.to_s]
            res = res + char
            placeholder = placeholder - tmp*(26**num_char)

            num_char = num_char - 1
        end
        res
    end
end

p Integer_to_ASCII.new.method(100)

