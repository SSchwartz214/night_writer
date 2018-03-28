require './lib/dictionary'
require "pry"

handle = File.open(ARGV[0], "r")
incoming_text = handle.read.strip
binding.pry
handle.close

dictionary = Dictionary.new

writer = File.open(ARGV[1], "w")
writer.write(dictionary.encode(incoming_text))
writer.close

puts "Created 'message.txt' with the braille.txt #{dictionary.encode} /
#{ARGV[1]}."
