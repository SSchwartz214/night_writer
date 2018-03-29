require_relative 'test_helper'
require './lib/braille_translator'
class BrailleTranslatorTest < Minitest::Test

  def test_it_exists
    braille_translator = BrailleTranslator.new

    assert_instance_of BrailleTranslator, braille_translator
  end

  def test_a_letter

    braille_translator = BrailleTranslator.new

    assert_equal"0.\n..\n..\n", braille_translator.encode("a")
  end

  def test_letter_on_multiple_rows

    braille_translator = BrailleTranslator.new

    assert_equal "0.\n..\n..\n", braille_translator.print_rows([["0.","..",".."]])
  end

  def test_word_on_multiple_rows
    braille_translator = BrailleTranslator.new
    result = [["0.","00",".."],
              ["0.",".0",".."],
              ["0.","0.","0."],
              ["0.","0.","0."],
              ["0.",".0","0."],
              ["  ","  ","  "],
              [".0","00",".0"]]

    expected = "0.0.0.0.0.  .0\n00.00.0..0  00\n....0.0.0.  .0\n"

    assert_equal expected, braille_translator.print_rows(result)
  end

  def test_a_word

    braille_translator = BrailleTranslator.new

    result = "0.0.0.0.0.  .00.0.0.00\n00.00.0..0  00.0000..0\n....0.0.0.  .00.0.0...\n"
    assert_equal result, braille_translator.encode("hello world")
  end

  def test_capitalize_letter

    braille_translator = BrailleTranslator.new

    result = "0.\n..\n..\n"
    assert_equal result, braille_translator.encode("A")
  end

  def test_it_can_capitalize_multiple_letters

    braille_translator = BrailleTranslator.new
    result = "0.0.\n..0.\n....\n"
    assert_equal result, braille_translator.encode("AB")
  end

  def test_puts_new_line_at_end_two_characters
    braille_translator = BrailleTranslator.new
    result = "0..0\n000.\n....\n"
    assert_equal result, braille_translator.encode("hi")
  end

end
