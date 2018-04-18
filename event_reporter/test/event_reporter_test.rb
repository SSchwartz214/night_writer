require 'minitest/autorun'
require 'minitest/pride'
require './lib/event_reporter'
require 'pry'

class EventReporterTest < Minitest::Test
  def setup
    @event_reporter = EventReporter.new
    @event_reporter.load('event_attendees.csv')
  end

  def test_it_exists
    assert_instance_of EventReporter, @event_reporter
  end

  def test_it_can_load_file

    assert_equal 19, @event_reporter.queue.count
    assert_instance_of Guest, @event_reporter.queue[0]
  end

  def test_queue_clear
    @event_reporter.queue_clear

    assert_equal 0, @event_reporter.queue.count
  end

end
