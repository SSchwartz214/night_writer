require_relative 'test_helper'
require './lib/writer'
class WriterTest < Minitest::Test

  def test_it_exists
    w = Writer.new

    assert_instance_of Writer, w
  end

end
