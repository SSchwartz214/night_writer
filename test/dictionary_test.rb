require_relative 'test_helper'
require './lib/dictionary'
class DictionaryTest < Minitest::Test

  def test_it_exists
    d = Dictionary.new

    assert_instance_of Dictionary, d
  end

  def test_a_letter
skip
    d = Dictionary.new

    assert_equal "0.\n..\n..", d.encode("a")
  end

  def test_a_word
skip
    d = Dictionary.new

    result = "0.\n00\n..\n0.\n.0\n..\n0.\n0.\n0.\n0.\n0.\n0.\n0.\n.0\n0.\n\n.0\n00\n.0\n0.\n.0\n0.\n0.\n00\n0.\n0.\n0.\n0.\n00\n.0\n.."
    assert_equal result, d.encode("hello world")
  end

  def test_capitalize_letter
skip
    d = Dictionary.new

    result = "..\n..\n.0\n0.\n..\n.."
    assert_equal result, d.encode("A")
  end

  def test_it_can_capitalize_multiple_letters
skip
    d = Dictionary.new
    result = "..\n..\n.0\n0.\n..\n..\n..\n..\n.0\n0.\n0.\n.."
    assert_equal result, d.encode("AB")
  end

  def test_puts_new_line_at_end_two_characters
    d = Dictionary.new
    result = "0..0\n000.\n....\n"
    assert_equal result, d.encode("hi")
  end

end
