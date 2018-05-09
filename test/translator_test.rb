require './lib/translator'
require 'minitest/autorun'

class TranslatorTest < MiniTest::Test

  def test_lower_case
    translator = Translator.new
    answer = "......-...-..--- .-----.-..-..-.."
    temp = translator.eng_to_morse("hello world").to_s
    assert_equal true, temp == answer
  end

  def test_with_numbers_ignore_case
    translator = Translator.new
    temp = translator.eng_to_morse("There are 3 ships").to_s
    answer = "-......-.. .-.-.. ...-- ..........--...."
    assert_equal true, temp == answer
  end

  def test_morse_to_eng
    translator = Translator.new
    temp = translator.morse_to_eng(".... . .-.. .-.. ---  .-- --- .-. .-.. -..")
    puts temp
    answer = "hello world"
    puts answer
    assert_equal true, temp == answer
  end


end
