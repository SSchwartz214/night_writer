require_relative 'test_helper'
require './lib/dictionary'
class DictionaryTest < Minitest::Test

  def test_it_exists
    d = Dictionary.new

    assert_instance_of Dictionary, d
  end

  def test_a_letter

    d = Dictionary.new

    assert_equal"0.\n..\n..\n", d.encode("a")
  end

  def test_a_word

    d = Dictionary.new

    result = "0.0.0.0.0.  .00.0.0.00\n00.00.0..0  00.0000..0\n....0.0.0.  .00.0.0...\n"
    assert_equal result, d.encode("hello world")
  end

  def test_capitalize_letter

    d = Dictionary.new

    result = "0.\n..\n..\n"
    assert_equal result, d.encode("A")
  end

  def test_it_can_capitalize_multiple_letters

    d = Dictionary.new
    result = "0.0.\n..0.\n....\n"
    assert_equal result, d.encode("AB")
  end

  def test_puts_new_line_at_end_two_characters
    d = Dictionary.new
    result = "0..0\n000.\n....\n"
    assert_equal result, d.encode("hi")
  end

end
