require_relative 'test_helper'
require './lib/dictionary'
class DictionaryTest < Minitest::Test

  def test_it_exists
    d = Dictionary.new

    assert_instance_of Dictionary, d
  end

  def test_a_letter
    d = Dictionary.new

    assert_equal "0.\n..\n..", d.encode("a")
  end

  def test_a_word

    d = Dictionary.new
    result = "0.\n00\n..\n0.\n.0\n..\n0.\n0.\n0.\n0.\n0.\n0.\n0.\n.0\n0.\n\n.0\n00\n.0\n0.\n.0\n0.\n0.\n00\n0.\n0.\n0.\n0.\n00\n.0\n.."
    assert_equal result, d.encode("hello world")
  end

  def test_capitalize_letter
    d = Dictionary.new
    result = "..\n..\n.0\n0.\n..\n.."
    assert_equal result, d.capitalize_letter("")
  end

end
