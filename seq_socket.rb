

require 'socket'

sequence = File.read('part1.seq')

socket = TCPSocket.open('localhost', 4001)
socket.puts 'clear now;'

sequence.each_line do |beat|
  i = beat.index(/X/)
  socket.puts "#{i + 53} 80;"
end

socket.close
