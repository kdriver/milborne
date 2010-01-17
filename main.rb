require 'socket'      # Sockets are in standard library

hostname = '192.168.0.2'
port = 80

s = TCPSocket.open(hostname, port)

while line = s.gets   # Read lines from the socket
  puts line.chop      # And print with platform line terminator
end
s.close               # Close the socket when done
