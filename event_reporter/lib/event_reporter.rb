require 'csv'
require './lib/guest'
require './lib/load_file'

class EventReporter
  include LoadFile

  attr_reader :queue

  def initialize
    @queue = []
  end

  def queue_clear
    @queue.clear
  end


end
