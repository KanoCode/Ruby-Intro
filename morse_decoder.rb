# morse dictionary
@morse_dictionary = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
                      '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K',
                      '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P', '--.-' => 'Q',
                      '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W',
                      '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z' }

def decode_char(str)
  @morse_dictionary[str]
end
puts decode_char('-...')

def decode_word(str)
  str.split.map { |char| decode_char(char) }.join
end
puts decode_word('-... --- -..-')

def decode(morse_str)
  morse_str.split('   ').map { |word| decode_word(word) }.join(' ')
end

morse_str = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
puts decode(morse_str)
