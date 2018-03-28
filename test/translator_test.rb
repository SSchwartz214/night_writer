require_relative 'test_helper'
require './lib/translator'
class TranslatorTest < Minitest::Test

  def test_it_exists
    translator = Translator.new

    assert_instance_of Translator, translator
  end

  def test_a_letter

    translator = Translator.new

    assert_equal"0.\n..\n..\n", translator.encode("a")
  end

  def test_a_word

    translator = Translator.new

    result = "0.0.0.0.0.  .00.0.0.00\n00.00.0..0  00.0000..0\n....0.0.0.  .00.0.0...\n"
    assert_equal result, translator.encode("hello world")
  end

  def test_capitalize_letter

    translator = Translator.new

    result = "0.\n..\n..\n"
    assert_equal result, translator.encode("A")
  end

  def test_it_can_capitalize_multiple_letters

    translator = Translator.new
    result = "0.0.\n..0.\n....\n"
    assert_equal result, translator.encode("AB")
  end

  def test_puts_new_line_at_end_two_characters
    translator = Translator.new
    result = "0..0\n000.\n....\n"
    assert_equal result, translator.encode("hi")
  end

end
