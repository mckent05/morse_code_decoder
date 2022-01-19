def decode_letter(letter)
    morse_decode = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
                      '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
                      '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
                      '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
                      '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
                      '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
                      '-.--' => 'Y', '--..' => 'Z' }
    return morse_decode[letter]
end

def decode_word(words)
    get_letter = ''
    form_word = ''
    word = words.split
    word.each do |letter|
       if letter ==='/'
           get_letter = ' '
       else
           get_letter = decode_letter(letter)
       end
       form_word +=get_letter
    end
    return form_word
end
