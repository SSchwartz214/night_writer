require_relative 'test_helper'
require './lib/dictionary'
class DictionaryTest < Minitest::Test

  def test_it_exists
    d = Dictionary.new

    assert_instance_of Dictionary, d
  end

  def test_a_letter
    d = Dictionary.new

    assert_equal "0.....", d.encode("a")
  end

  def test_a_word
    d = Dictionary.new
    result = "0.00..0..0..0.0.0.0.0.0.0..00..000.00..00.0.000.0.0.0.00.0.."
    assert_equal result, d.encode("hello world")
  end

end
