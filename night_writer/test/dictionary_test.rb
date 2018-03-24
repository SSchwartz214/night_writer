require_relative 'test_helper'
require './lib/dictionary'
class DictionaryTest < Minitest::Test

  def test_it_exists
    d = Dictionary.new
    assert_instance_of Dictionary, d
  end

end
