require './lib/dictionary'

handle = File.open(ARGV[0], "r")
incoming_text = handle.read.gsub("", "/n").strip
handle.close

printer = Printer.new

writer = File.open(ARGV[1], "w")
writer.write(e.crack(incoming_text, ARGV[2]))
writer.close

puts "Created 'message.txt' with the braille.txt #{printer.method} /
#{ARGV[2]}."
