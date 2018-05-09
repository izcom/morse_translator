require 'pry'

class Translator

  def initialize
    @letter_count = 0
    @morse_count = 0
    @dictionary = {"a" => ".-",
                    "b" => "-...",
                    "c" => "-.-.",
                    "d" => "-..",
                    "e" => ".",
                    "f" => "..-.",
                    "g" => "--.",
                    "h" => "....",
                    "i" => "..",
                    "j" => ".---",
                    "k" => "-.-",
                    "l" => ".-..",
                    "m" => "--",
                    "n" => "-.",
                    "o" => "---",
                    "p" => ".--.",
                    "q" => "--.-",
                    "r" => ".-.",
                    "s" => "...",
                    "t" => "-",
                    "u" => "..-",
                    "v" => "...-",
                    "w" => ".--",
                    "x" => "-..-",
                    "y" => "-.--",
                    "z" => "--..",
                    "1" => ".----",
                    "2" => "..---",
                    "3" => "...--",
                    "4" => "....-",
                    "5" => ".....",
                    "6" => "-....",
                    "7" => "--...",
                    "8" => "---..",
                    "9" => "----.",
                    "0" => "-----",
                    " " => " "}
  end

  def eng_to_morse(word) # passing in a string
    total_word = ""
    word_over = false
    while word_over == false
      @dictionary.each do |letter, morse|
        if word[@letter_count].to_s.downcase == letter
          total_word += morse
          @letter_count += 1
        end
        if @letter_count == word.length
          word_over = true
        end
      end
    end
    @letter_count = 0
    return total_word
  end

  def morse_to_eng(code)
    total_word = ""
    morse_over = false
    while morse_over == false
      @dictionary.each do |letter, morse|
        temp = code[@morse_count..code.index(' ')]
        puts "LOOK AT ME!"
        puts temp
        if temp == morse
          total_word += letter
        end
        @morse_count += 1
        if @morse_count == code.length
          morse_over = true
        end
      end
    end
    return total_word
  end





end
