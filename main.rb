require 'socket'      # Sockets are in standard library
require 'MM'      

def smr_bind
	msg = MM.new
	smr = SM.new
  
	msg.add(smr.create_smr_bind)
	smr_bind_request = msg.get_buffer
	return smr_bind_request
end

hostname = '172.16.6.166'
port = 9001

s = TCPSocket.open(hostname, port)


buffer = smr_bind()

buffer.each { |i| print i.to_s , "," }
print "\n"

s.write(buffer)

print "written\n"

reply = s.read()

print "read\n"

reply.each { |i| print i.to_s , "," }
