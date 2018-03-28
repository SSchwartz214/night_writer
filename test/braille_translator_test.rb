require_relative 'test_helper'
require './lib/braille_translator'
class DictionaryTest < Minitest::Test

  def test_it_exists
    braille_translator = BrailleTranslator.new

    assert_instance_of BrailleTranslator, braille_translator
  end

  def test_a_braille_letter
    braille_translator = BrailleTranslator.new

    assert_equal ["a"], braille_translator.decode(["0.","..",".."])
  end
end
