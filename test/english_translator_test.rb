require_relative 'test_helper'
require './lib/english_translator'
class BrailleTranslatorTest < Minitest::Test

  def test_it_exists
    english_translator = EnglishTranslator.new

    assert_instance_of EnglishTranslator, english_translator
  end

  def test_a_braille_letter
    english_translator = EnglishTranslator.new

    assert_equal ["a"], english_translator.decode(["0.","..",".."])
  end
end
