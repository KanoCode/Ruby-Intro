def decode(morse_str)
  word = ''
  final_text = ''

  morse_dictionary = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
                       '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K',
                       '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P', '--.-' => 'Q',
                       '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W',
                       '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z' }

  word = ''
  final_text = ''

  morse_str.split('   ').each do |i|
    i.split.each do |r|
      word.concat(morse_dictionary[r])
    end
    final_text.concat("#{word} ")
    word = ''
  end
  final_text
end
morse_str = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
p decode(morse_str)

# We will have a variable to track down the space characters

# if the space character >= 2 then we add the space to our word else we ignore it
# loop through each character in a morse_str if the next
